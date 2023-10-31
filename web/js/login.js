// bg image
const imgUrls = [
    'https://images.unsplash.com/photo-1562522845-dc05ff0fdc1b?auto=format&fit=crop&q=80&w=2071&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1535715145821-23c425db8a2c?auto=format&fit=crop&q=80&w=2071&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1598214173494-6908cea3f7b8?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1633679763434-4ec810ff529f?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',

    'https://images.unsplash.com/photo-1616869736824-58279011056a?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',

    'https://images.unsplash.com/photo-1572554485983-7b8b7357317b?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',

    'https://images.unsplash.com/photo-1602969655728-53b50d87a990?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',

    'https://images.unsplash.com/photo-1528586791672-04c55056a635?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',

    'https://images.unsplash.com/photo-1600184894488-f4c3a9b49022?auto=format&fit=crop&q=80&w=1931&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',

  ];
  
  function getRandomImage() {
    const index = Math.floor(Math.random() * imgUrls.length);
    return imgUrls[index];  
  }
  
  const bgImageEl = document.querySelector('.bg-no-repeat');
  bgImageEl.style.backgroundImage = `url(${getRandomImage()})`;



//   Quotes
  const quotes = [
    "Good morning! Let's start an efficient and successful working day.",
    "Always stay positive and do your best at work today!",
    "Have a great day with lots of creative ideas and new achievements!",
    "Try your hardest and complete everything to make it a meaningful day!",
    "See today as a chance to develop yourself and contribute to the work!",
    "Make the most of today by working hard and enjoying the rewards.",
    "You have the power to make today incredible, so make it happen!",
    "Don't let anything stop you from accomplishing great things today!",
    "Stay focused and motivated to get important tasks done efficiently.",
    "Believe in yourself and your abilities to excel at work today!",
  ];

  const quoteElement = document.querySelector("p");

  function getRandomQuote() {
    const index = Math.floor(Math.random() * quotes.length);
    return quotes[index];
  }

  quoteElement.textContent = getRandomQuote();