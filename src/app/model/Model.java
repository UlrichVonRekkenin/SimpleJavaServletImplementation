package app.model;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import app.entities.Rectangle;


public class Model {

    private static Model instance = new Model();
    private List<Rectangle> items;
    
    public static Model getInstance() {
    	return instance;
    }
    
    private Model() {
    	items = new ArrayList<>();
    }
    
    public void add(Rectangle rect) {
    	items.add(rect);
    }
    
    public List<String> list(){
    	return items.stream().map(Rectangle::toString).collect(Collectors.toList());
    }
}
