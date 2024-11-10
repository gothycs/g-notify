window.addEventListener('message', function(event) {
    const data = event.data;
    if (data.type && data.message) {
        showNotification(data.type, data.message, data.position);
    }
});

function showNotification(type, message, position = "top-right") {
    const notificationContainer = document.getElementById('notifications');
    
    notificationContainer.className = position;

    const notification = document.createElement('div');
    notification.classList.add('notification', type);
    
    const icon = document.createElement('div');
    icon.classList.add('icon');
    notification.appendChild(icon);

    const text = document.createElement('span');
    text.innerText = message;
    notification.appendChild(text);

    notificationContainer.appendChild(notification);

    setTimeout(() => {
        notification.style.opacity = '0';
        setTimeout(() => {
            notification.remove();
        }, 500);
    }, 3500);
}
