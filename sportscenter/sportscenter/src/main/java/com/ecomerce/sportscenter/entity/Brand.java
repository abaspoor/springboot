package com.ecomerce.sportscenter.entity;

import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "Brand")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder

public class Brand {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private Integer id;
    @Column(name = "Name")
    private String name;
    @OneToMany(mappedBy = "brand", fetch = FetchType.LAZY)
    private List<Product> products;
}
