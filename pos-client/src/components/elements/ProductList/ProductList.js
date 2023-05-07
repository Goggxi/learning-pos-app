import Image from 'next/image';
import style from './index.module.css';

const ProductList = ({ products }) => {
  return (
    <div className={style['product-list']}>
      {products.map((product) => (
        <div
          key={product.id}
          className={style['product-list__product-card']}
        >
          <div className={style['product-list__product-card__image']}>
            <Image
              src={product.img_product}
              alt={product.name}
              fill
              style={{ objectFit: 'contain' }}
            />
          </div>
          <div className={style['product-list__product-card__description']}>
            <p>{product.name}</p>
            <button>+</button>
          </div>
        </div>
      ))}
    </div>
  );
}

export default ProductList;