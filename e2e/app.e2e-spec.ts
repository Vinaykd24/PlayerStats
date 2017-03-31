import { Project02Page } from './app.po';

describe('project02 App', function() {
  let page: Project02Page;

  beforeEach(() => {
    page = new Project02Page();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
