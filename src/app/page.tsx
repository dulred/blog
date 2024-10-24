export default function Index(
  {
    children,
  }: Readonly<{
    children: React.ReactNode;
  }>

) {

  return (
    <main>
      {children}
    </main>
  );
}
