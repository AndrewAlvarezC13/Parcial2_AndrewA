package com.parcial.parcial2;
import java.util.Optional;
import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/clientes")
public class Controlador {
    @Autowired
    private ClienteServicio ClienteServicio;
    
    @PostMapping
    public Cliente crearCliente(@RequestBody Cliente cliente) {
        return ClienteServicio.crearCliente(cliente);
    }
    
    @GetMapping
    public List<Cliente> listarClientes() {
        return ClienteServicio.listarClientes();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Cliente> obtenerClientePorId(@PathVariable Long id) {
        Optional<Cliente> cliente = clienteServicio.obtenerClientePorId(id);
        return cliente.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Cliente> actualizarCliente(@PathVariable Long id, @RequestBody ClienteDTO clienteDTO) {
        try {
            Cliente clienteActualizado = clienteServicio.actualizarCliente(id, clienteDTO);
            return ResponseEntity.ok(clienteActualizado);
        } catch (EntityNotFoundException e) {
            return ResponseEntity.notFound().build();
        }
    }
}
