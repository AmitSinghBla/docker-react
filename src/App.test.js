import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/My name is Arun&Allen Pal Singh and i am living in India/i);
  expect(linkElement).toBeInTheDocument();
});


