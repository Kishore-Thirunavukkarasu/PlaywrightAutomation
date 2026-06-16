class lxpCourse {
  courseTitle: string;
  courseSlug: string;
  category: string;
  courseDescription: string;
  difficulty: string;
  thumbnailImagePath: string;
  coverImagePath: string;
  prerequisites: string;
  publicationStatus: boolean;
  tagName: string;
  skillTag: string;
  courseCode: string;
  courseSystemVariable: string;

  getCourseSystemVariable(): string {
    return this.courseSystemVariable;
  }
  
  setCourseSystemVariable(courseSystemVariable: string): void {
    this.courseSystemVariable = courseSystemVariable;
  }

  getCourseCode(): string {
    return this.courseCode;
  }

  setCourseCode(courseCode: string): void {
    this.courseCode = courseCode;
  }

  getSkillTag(): string {
    return this.skillTag;
  }

  setSkillTag(skillTag: string): void {
    this.skillTag = skillTag;
  }

  getCourseTitle(): string {
    return this.courseTitle;
  }

  setCourseTitle(courseTitle: string): void {
    this.courseTitle = courseTitle;
  }

  getCourseSlug(): string {
    return this.courseSlug;
  }

  setCourseSlug(courseSlug: string): void {
    this.courseSlug = courseSlug;
  }

  getCategory(): string {
    return this.category;
  }

  setCategory(category: string): void {
    this.category = category;
  }

  getCourseDescription(): string {
    return this.courseDescription;
  }

  setCourseDescription(courseDescription: string): void {
    this.courseDescription = courseDescription;
  }

  getDifficulty(): string {
    return this.difficulty;
  }

  setDifficulty(difficulty: string): void {
    this.difficulty = difficulty;
  }

  getThumbnailImagePath(): string {
    return this.thumbnailImagePath;
  }

  setThumbnailImagePath(thumbnailImagePath: string): void {
    this.thumbnailImagePath = thumbnailImagePath;
  }

  getCoverImagePath(): string {
    return this.coverImagePath;
  }

  setCoverImagePath(coverImagePath: string): void {
    this.coverImagePath = coverImagePath;
  }

  getPrerequisites(): string {
    return this.prerequisites;
  }

  setPrerequisites(prerequisites: string): void {
    this.prerequisites = prerequisites;
  }

  getPublicationStatus(): boolean {
    return this.publicationStatus;
  }

  setPublicationStatus(publicationStatus: boolean): void {
    this.publicationStatus = publicationStatus;
  }

  gettag(): string {
    return this.tagName;
  }
  
  settag(tag: string): void {
    this.tagName = tag;
  }
}
export default lxpCourse;
