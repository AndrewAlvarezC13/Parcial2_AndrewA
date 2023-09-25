package com.parcial.parcial2;
import javax.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.base.Optional;
    @Service
public class ClienteServicio {
    @Autowired
    private ClienteRepositorio clienteRepositorio;
    
    public Cliente crearCliente(Cliente cliente) {
        return clienteRepository.save(cliente);
    }
    
    public List<Cliente> listarClientes() {
        return ClienteRepositorio.findAll();
    }
  
    public Optional<Cliente> obtenerClientePorId(Long id) {
        return ClienteRepositorio.findById(id);
    }
    
    public Cliente actualizarCliente(Long id, ClienteDTO clienteDTO) {
        Optional<Cliente> clienteExistente = ClienteRepositorio.findById(id);
        
        if (clienteExistente.isPresent()) {
            Cliente cliente = clienteExistente.get();
            
            cliente.setPrimernombre(clienteDTO.getPrimernombre());
            cliente.setSegundonombre(clienteDTO.getSegundonombre());
            
            return ClienteRepositorio.save(cliente);
        } else {
            throw new EntityNotFoundException("Cliente no encontrado");
        }
    }
}

