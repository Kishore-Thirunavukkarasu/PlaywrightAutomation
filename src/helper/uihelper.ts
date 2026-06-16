import type { Locator, Page } from 'playwright';
import * as path from 'path';


async function selectParticularTenant(targetTenant: string) {
    void targetTenant;
    //     let index = -1;
    //     for (let i = 0; i <tenantNames.length; i++){
    //     const tenantName=await tenantNames[i].getText();
    //     console.log(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+tenantName)
    //     if (tenantName.trim() === targetTenant.trim()) {
    //         index = i;
    //         console.log(">>>>>>>>>>>>>>>>>>>>>>>>>>>>"+index)
    //         break;
    //     }
    // }
    // if (index !== -1) {
    //     await tenantElipsis[index].click();
    //   } else {
    //     console.error(`Tenant "${targetTenant}" not found in the list.`);
    //   }
}

async function scrollIntoViewAnElement(element: Locator) {
    await element.scrollIntoViewIfNeeded();
}

async function scrollIntoView(page: Page, fromPixel: number, toPixel: number) {
    await page.evaluate(
        ({ from, to }) => {
            window.scrollTo(from, to);
        },
        { from: fromPixel, to: toPixel }
    );
}

async function selectTemplateForUpload(page: Page, templateName: string) {
    const webelement = page.locator("//*[text()='Choose Template']//parent::div//input");
    const timeout = Number(process.env.fastwait || '5000');

    await webelement.waitFor({ state: 'visible', timeout });
    await webelement.fill(templateName);
    await page.keyboard.press('Enter');
}


async function uploadingfile(webelement: Locator, filepath: string) {
    // let absolutepath = path.resolve(filepath);
    // if (process.env.robotFramework.toUpperCase() === "Y") {

    //     await (await webelement).waitForDisplayed({ timeout: parseInt(process.env.fastwait || '5000') });
    //     (await webelement).click();

    //     await new Promise(resolve => setTimeout(resolve, 200));

    //     robot.setKeyboardDelay(100);

    //     await typeStringDelay(absolutepath);

    //     // Press Enter to select the file and close the dialog
    //     robot.keyTap('enter');
    // } else if (process.env.robotFramework.toUpperCase() === "N") {

    const absolutepath = path.resolve(filepath);
    const timeout = Number(process.env.fastwait || '5000');

    await webelement.waitFor({ state: 'attached', timeout });
    try {
        await webelement.setInputFiles(absolutepath);
    }
    catch (err) {
        console.log(`>>>>>>>>>>>>>>>>>>>>>>>>>>>>` + err);
    }
    // }
}

async function keyPressDropdown(page: Page, count: number) {
    for (let i = 1; i < count; i++) {
        await page.keyboard.press('ArrowDown');
    }
    await page.keyboard.press('Enter');
}

async function scrollToCenter(element: Locator) {
    const timeout = Number(process.env.fastwait || '5000');
    await element.waitFor({ state: 'visible', timeout });

    await element.evaluate((el: HTMLElement) => {
        const rect = el.getBoundingClientRect();
        const scrollTop =
            window.pageYOffset ||
            document.documentElement.scrollTop;

        const offset =
            rect.top + scrollTop - window.innerHeight / 2;

        window.scrollTo({
            top: offset,
            behavior: 'auto'
        });
    });
}










// async function fileUploadRobotJS() {

//     const typeStringDelay = (str: string) => {
//         for (const char of str) {
//             robot.typeString(char);
//             robot.keyTap('right');
//             new Promise(resolve => setTimeout(resolve, 200));
//         }
//     }
//     const filePath = "C:\\Users\\thirunav\\Downloads\\Essilor.png";

//     robot.setKeyboardDelay(400);
//     for (const path of filePath) {
//         typeStringDelay(path);
//     }

//     robot.keyTap('enter');

// }



export default { scrollToCenter, keyPressDropdown, selectParticularTenant, scrollIntoView, uploadingfile, scrollIntoViewAnElement, selectTemplateForUpload }
