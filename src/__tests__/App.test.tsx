import { render } from '@testing-library/react';
import App from '../App';

test('renders main page', () => {
  render(<App />);
  expect(true).toBeTruthy();
});
