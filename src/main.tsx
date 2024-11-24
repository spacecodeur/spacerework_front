import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import App from "./App.tsx";
import EditorPage from "./pages/EditorPage/EditorPage.tsx";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

const router = createBrowserRouter([
  {
    element: <App />,
    children: [
      {
        path: "/editor",
        element: <EditorPage />,
      },
    ],
  },
]);

const rootElement = document.getElementById("root");
if (rootElement === null) {
  throw new Error(`Your HTML Document should contain a <div id="root"></div>`);
}

createRoot(rootElement).render(
  <StrictMode>
    <RouterProvider router={router} />
  </StrictMode>,
);
