import EditorComponent from "../../components/course/EditorComponent/EditorComponent";
import ReaderComponent from "../../components/course/ReaderComponent/ReaderComponent";
import style from "./EditorPage.module.css";

function EditorPage() {
  // const courseId = 42;

  return (
    <>
      <main className={style.editor_page_main_container}>
        <EditorComponent />
        <ReaderComponent />
      </main>
      <p className={style.mobile_warning_message}>
        Veuillez ouvrir l'éditeur depuis un ordinateur
      </p>
    </>
  );
}

export default EditorPage;
