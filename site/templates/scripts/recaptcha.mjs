/**
 * @typedef {any} grecaptcha
 * @method grecaptcha.execute
 */

export function installReCaptchaHandlers() {
    for (const form of document.forms) {
        const captchaField = form.querySelector("[name=recaptcha]");
        if (captchaField) {
            form.addEventListener("submit", async event => {
                event.preventDefault();

                captchaField.value = await grecaptcha.execute(
                    window.WebsiteConfiguration.reCaptchaPublicKey,
                    {action: "submit"}
                );

                form.submit();
            });
        }
    }
}