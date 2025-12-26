import type { NextPage } from 'next';
import Link from 'next/link';

const Home: NextPage = () => {
  return (
    <div className="min-h-screen flex flex-col items-center justify-center p-8">
      <h1 className="text-4xl font-bold mb-4">Welcome to X Platinum CRE</h1>
      <p className="text-lg mb-8 text-center max-w-xl">
        Tokenize and invest in institutional-grade commercial real estate. Use the navigation below to explore the platform.
      </p>
      <div className="space-x-4">
        <Link href="/login" className="text-blue-600 underline">Login</Link>
        <Link href="/dashboard" className="text-blue-600 underline">Investor Dashboard</Link>
        <Link href="/admin" className="text-blue-600 underline">Admin Panel</Link>
      </div>
    </div>
  );
};

export default Home;
