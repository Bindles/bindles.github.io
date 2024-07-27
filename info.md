        <!-- Projects Section -->
        <section id="projects" class="mb-8">
            <h2 class="text-4xl font-bold mb-6 text-center">Projects</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4" id="projects-container">
                <!-- Placeholder for projects -->
            </div>
        </section>


        

<!-- Contact Section -->
<section id="contact" class="bg-gray-800 text-white py-8">
    <h2 class="text-4xl font-bold mb-6 text-center">Contact</h2>
    <div class="max-w-xl mx-auto rounded-lg bg-gray-800 p-8">
        <form id="contact-form" class="space-y-4">
            <div>
                <label for="name" class="block text-sm font-bold text-gray-400">Name</label>
                <input type="text" id="name" name="name" class="w-full px-4 py-2 bg-gray-700 rounded-lg text-gray-200 focus:outline-none focus:bg-gray-600" placeholder="Your name">
            </div>
            <div>
                <label for="email" class="block text-sm font-bold text-gray-400">Email</label>
                <input type="email" id="email" name="email" class="w-full px-4 py-2 bg-gray-700 rounded-lg text-gray-200 focus:outline-none focus:bg-gray-600" placeholder="Your email">
            </div>
            <div>
                <label for="subject" class="block text-sm font-bold text-gray-400">Subject</label>
                <input type="text" id="subject" name="subject" class="w-full px-4 py-2 bg-gray-700 rounded-lg text-gray-200 focus:outline-none focus:bg-gray-600" placeholder="Subject">
            </div>
            <div>
                <label for="message" class="block text-sm font-bold text-gray-400">Message</label>
                <textarea id="message" name="message" rows="5" class="w-full px-4 py-2 bg-gray-700 rounded-lg text-gray-200 focus:outline-none focus:bg-gray-600" placeholder="Your message"></textarea>
            </div>
            <button type="submit" class="w-full bg-blue-400 text-white font-bold py-2 px-4 rounded-lg focus:outline-none hover:bg-blue-500 transition-colors duration-300">Send Message</button>
        </form>
    </div>
</section>


<!-- SKILL BEFORE CHANGE PACE SLOWER-->

                    // Calculate the number of skills to show based on screen size
                    const numSkillsToShow = Math.floor(window.innerWidth / 150); // Adjust 150 according to your preference

                    // Clone skills array to create a looping effect
                    const allSkills = [...skills, ...skills];

                    // Create skill elements and append them to the container
                    allSkills.forEach(skill => {
                        const skillDiv = document.createElement('div');
                        skillDiv.classList.add('skill-item');

                        const skillImg = document.createElement('img');
                        skillImg.src = skill.url;
                        skillImg.alt = skill.name;

                        const skillName = document.createElement('span');
                        skillName.textContent = skill.name;
                        skillName.classList.add('text-center', 'text-gray-800', 'text-2xl', 'mt-2');

                        skillDiv.appendChild(skillImg);
                        skillDiv.appendChild(skillName);

                        document.querySelector('.skills-container').appendChild(skillDiv);
                    });

                    // Function to scroll the skills container
                    function scrollSkillsContainer() {
                        const container = document.querySelector('.skills-container');
                        container.scrollBy({ left: 1, behavior: 'smooth' });
                    }

                    // Start the scroll effect
                    setInterval(scrollSkillsContainer, 12); // Adjust the interval and scroll amount as needed
                </script>