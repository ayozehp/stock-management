package es.ayozehp.car.stock.model;

import com.google.gson.Gson;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;
import java.util.HashMap;

@Converter
public class HashMapToJsonConverter implements AttributeConverter<HashMap<String, Object>, String> {

    private final Gson gson = new Gson();

    @Override
    public String convertToDatabaseColumn(HashMap<String, Object> attribute) {
        return gson.toJson(attribute);
    }

    @Override
    public HashMap<String, Object> convertToEntityAttribute(String dbData) {
        return gson.fromJson(dbData, HashMap.class);
    }
}