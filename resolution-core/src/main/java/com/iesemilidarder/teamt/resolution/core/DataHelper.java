package com.iesemilidarder.teamt.resolution.core;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.iesemilidarder.teamt.resolution.core.data.Product;

public class DataHelper {

//	public static Integer MAX_NUM = 1; // poner el número que queramos

	private DataHelper() {
	}

	private static final Map<Class<? extends Product>, Map<UUID, Product>> by_class_id = new HashMap<>();
	private static final Map<UUID, Product> by_id = new HashMap<>();

	/**
	 * Gets all instances of class {@code cl}.
	 * 
	 * @param cl the kind of product we are interested in.
	 * @return a {@link Collection} of instances, all of class {@code T}.
	 */
	@SuppressWarnings("unchecked")
	public static <T extends Product> Collection<T> getAll(Class<T> cl) {
		Map<UUID, Product> m = by_class_id.get(cl); // get all the instances of class cl.
		if (m == null)
			return null;
		return (Collection<T>) m.values();
	}

	/* LET'S CRUD. */

	/* CREATE */
	@SuppressWarnings("unchecked")
	public static <T extends Product> T create(T new_product) throws AlreadyInDatabaseException {
		Class<T> cl = (Class<T>) new_product.getClass();
		Map<UUID, Product> m = by_class_id.get(cl);
		if (m == null) {
			m = new HashMap<UUID, Product>();
			by_class_id.put(cl, m);
		}
		UUID id = new_product.getId();
		if (m.containsKey(id))
			throw new AlreadyInDatabaseException("id " + id + " already in database");
		m.put(id, new_product);
		by_id.put(id, new_product);
		return new_product;
	}

	/* RETRIEVE */
	/**
	 * Return the instance with id specified.
	 * 
	 * @param id the {@link UUID} of the required instance.
	 * @return the {@link Product} found, or {@code null} in case no instance is
	 *         found.
	 */
	public static Product retrieve(UUID id) {
		return by_id.get(id);
	}
	
	/**
	 * Return a specific Class instance by id.
	 * @param cl the class of objects we are interested in.
	 * @param id the id key for the class.
	 * @return the instance from the database.
	 */
	@SuppressWarnings("unchecked")
	public static <T extends Product> T retrieve(Class<T> cl, UUID id) {
		Map<UUID, Product> m = by_class_id.get(cl);
		if (m == null) return null;
		return (T) m.get(id);
	}

	/* UPDATE */
	/**
	 * Update the product in the database corresponding to the passed instance.
	 * 
	 * <strong>NOTE</strong>: the implementation updates the instance with the
	 * passed one, because of lacking a method to update the instance stored with
	 * the data supplied by {@code the_product}.
	 * 
	 * @param the_product the new data to be updated.
	 * @throws InstanceNotFoundException in case of not finding the instance.
	 */
	public static <T extends Product> void update(T the_product) throws InstanceNotFoundException {
		UUID id = the_product.getId();
		Product old = by_id.get(id);
		if (old == null)
			throw new InstanceNotFoundException("id " + id + " has not been " + "found in database, cannot update");
		/* XXX: esto debería hacerse de otro modo. */
		by_id.put(id, the_product);
		Map<UUID, Product> m = by_class_id.get(the_product.getClass());
		// m cannot be null, because the instance appeared in the map by_id.
		assert (m != null);
		m.put(id, the_product);
	}

	/**
	 * Delete an instance from the database.
	 * 
	 * @param the_item the instance to be deleted.
	 * @throws InstanceNotFoundException in case the instance is not present in the
	 *                                   database.
	 *
	 */
	public static <T extends Product> void delete(T the_item) throws InstanceNotFoundException {
		UUID id = the_item.getId();
		if (!by_id.containsKey(id))
			throw new InstanceNotFoundException("cannot delete " + id + ", instance not found");
		Map<UUID, Product> m = by_class_id.get(the_item.getClass());
		// here we can allow a NullPointerException to occur, as that means that
		// the database is corrupt and it's better to allow the exception to occur.
		m.remove(id);
	}
	
//
//	/* end Array Hoteles */
//
//	/* FIND BY UUID in HOTELS AND ITEMS */
//	public static Product getItemById(UUID id) {
//		try {
//			for (Product aux : products) {
//				if (aux.getId().equals(id)) {
//					return aux;
//				}
//			}
//		} catch (Exception e) {
//			System.out.println("WANTED!!!" + e.toString());
//		}
//		return null;
//	}
//
//	public static void addItem(Product aux) {
//		try {
//			if (aux != null) {
//				products.add(aux);
//			}
//		} catch (Exception e) {
//			System.out.println("MEK!!!" + e.toString());
//		}
//	}
//
//	/* add restaurants */
//	public static void addItemRest(Restaurant aux) {
//		try {
//			if (aux != null) {
//				restaurantes.add(aux);
//			}
//		} catch (Exception e) {
//			System.out.println("MEK!!!" + e.toString());
//		}
//	}

	/**
	 * Checks for emptyness of items of class {@code cl}.
	 * @param cl the class we are interested in or {@code null}, in case we want a general idea.
	 * @return {@code true} in case the database is empty of items of class cl.
	 */
	public static boolean isEmpty(Class<? extends Product> cl) {
		if (cl == null) {
			// buscamos instancias de cualquier clase...
			return by_id.isEmpty();
		}
		// cl no es null, luego estamos buscando una clase concreta.
		Map<UUID, Product> m = by_class_id.get(cl);
		return m == null || m.isEmpty();
	}
	
//
//	/* IsEmpty Restaurant */
//	public static void isEmptyRestaurant() {
//		for (int i = 0; i < MAX_NUM; i++) {
//			Restaurant rest1;
//			rest1 = new Restaurant() {
//				@Override
//				public void setName(String name) {
//					super.setName(name);
//
//				}
//			};
//
//			rest1.setName("Restaurante Nº" + i);
//			rest1.setPrecio(++i + 100 + i + 00.00);
//			rest1.setDescription(
//					"Cada rest Incluye  Menú Degustacion según Nº de estrellas Michelin (Starts Nº" + i + ")");
//			rest1.setImgUri("http://");
//			restaurantes.add(rest1);
//
//		}
//
//	}
//
//	/* is empty Hoteles */
//	public static void isemptyhoteles() {
//		for (int i = 0; i < MAX_NUM; i++) {
//			Hotel hotelx = new Hotel();
//			Hotel alpha = new Hotel();
//			alpha.setName("Bella Vista");
//			alpha.setDescription("asdasd");
//			alpha.setPrecio(12.0);
//			alpha.setImgUri("no image");
//			hotelx.setName("Hotel Marbella Nº" + i);
//			hotelx.setPrecio(++i + 100 + i + 00.00);
//			hotelx.setDescription("Cada Hotel Incluye Pension completa según Nº de estrellas (Starts Nº" + i + ")");
//			hotelx.setImgUri("http://");
//			hoteles.add(hotelx);
//			hoteles.add(alpha);
//
//		}
//
//	}
//
//	/* is Empty Actividades */ /* Esto genera actividades */
//	public static void isEmptyActividades() {
//		for (int i = 0; i < MAX_NUM; i++) {
//			Activity actx;
//			actx = new Activity();
//
//			actx.setName("Actividades Nº" + i);
//			actx.setPrecio(++i + 100 + i + 00.00);
//			actx.setDescription("Cada Actividad Tiene una descripción (Starts Nº" + i + ")");
//			actx.setImgUri("http://");
//			actividades.add(actx);
//
//		}
//
//	}
//
//	/* MÉTODO TO DELETE fase Alpha */
//
//	public static void deleteproduct(UUID product) {
//		try {
//			if (product != null) {
//				products.remove(product);
//				// products.del(aux);
//			}
//		} catch (Exception e) {
//			System.out.println("MEK!!!" + e.toString());
//		}
//	}
//	/**
//	 * Método Delete 2 fase beta
//	 */

}