import express from 'express';

import { deleteNoteById, getAllNotes, addNote, putNote } from '../controllers/note';

import { getNoteById } from '../controllers/note';

const router = express.Router();

router.get("/", getAllNotes);

router.post("/", addNote);

router.put('/:id', putNote);

router.delete("/delete/:id", deleteNoteById);

router.get("/:id", getNoteById);

export default router;