import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Ma Petite Compagnie",
  description: "Application de gestion pour compagnie de théâtre",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="fr">
      <body>{children}</body>
    </html>
  );
}
