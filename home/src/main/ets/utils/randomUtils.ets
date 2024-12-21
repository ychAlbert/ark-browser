// randomUtils.ets
export function getRandomColor() {
  const letters = '0123456789ABCDEF';
  let color = '#';
  for (let i = 0; i < 6; i++) {
    color += letters.charAt(Math.floor(Math.random() * 16));
  }
  return color;
}

export function getRandomText() {
  const words = ['Lorem', 'ipsum', 'dolor', 'sit', 'amet', 'consectetur', 'adipiscing', 'elit'];
  let text = '';
  for (let i = 0; i < Math.floor(Math.random() * 5) + 3; i++) {
    text += words[Math.floor(Math.random() * words.length)] + ' ';
  }
  return text.trim();
}
