import { string } from 'joi';
import mongoose from 'mongoose';

export default interface CategoryI extends mongoose.Document{
    categoryName : string,
    articles: []
}

export const CategorySchema : mongoose.Schema<CategoryI> = new mongoose.Schema({
    categoryName : {
        type: String,
        required : true,
        unique:true
    },
    articles: {
        type : [],
        required:true,
    }
});