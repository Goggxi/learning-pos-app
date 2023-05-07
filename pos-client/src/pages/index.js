import React, { useEffect, useState } from "react";
import api from "@/api";
import Layout from "@/components/layouts/Layout";
import ProductList from "@/components/elements/ProductList/ProductList";

export default function Home() {

  const [products, setProducts] = useState([]);

  const fetchProduct = async () => {
    const res = await api.get("/products");
    const data = await res.data.payload;
    setProducts(data);
  };

  useEffect(() => {
    fetchProduct();
  }, []);

  return (
    <Layout>
      <h1>Home</h1>
      <ProductList products={products} />
    </Layout>
  )
}
