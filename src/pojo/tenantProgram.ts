class tenantProgram {
    private programName: string;
    private domainUrl: string;
    private programBranding: string;
    private programBrandingLabel: string;
    private primaryBGColour: string;
    private primaryTextColour: string;
    private secondaryBGColour: string;
    private secondaryTextColour: string;
    private homepageBannerSmall: string;
    private homepageBannerMedium: string;
    private countryTab: string;
    private countryDD: string;
    private deleteCountry: string;
    private languageTab: string;
    private languageDD: string;
    private deleteLanguage: string;
    private pointsExpiry: string;
    private fifoBankEnabled: string;
    private showExpiryData: string;
    private expiryInDays: string;
    private expiryInMonths: string;
    private expiryPeriodValue: string;
    private programSubmit: string;
    private programCancel: string;
    private appcode:string;
    private timeZone:string;

    public getAppCode(): string {
        return this.appcode;
    }

    public setAppCode(appcode: string): void {
        this.appcode = appcode;
    }

    public getProgramName(): string {
        return this.programName;
    }

    public setProgramName(programName: string): void {
        this.programName = programName;
    }

    public getDomainUrl(): string {
        return this.domainUrl;
    }

    public setDomainUrl(domainUrl: string): void {
        this.domainUrl = domainUrl;
    }

    public getProgramBranding(): string {
        return this.programBranding;
    }

    public setProgramBranding(programBranding: string): void {
        this.programBranding = programBranding;
    }

    public getProgramBrandingLabel(): string {
        return this.programBrandingLabel;
    }

    public setProgramBrandingLabel(programBrandingLabel: string): void {
        this.programBrandingLabel = programBrandingLabel;
    }

    public getPrimaryBGColour(): string {
        return this.primaryBGColour;
    }

    public setPrimaryBGColour(primaryBGColour: string): void {
        this.primaryBGColour = primaryBGColour;
    }

    public getPrimaryTextColour(): string {
        return this.primaryTextColour;
    }

    public setPrimaryTextColour(primaryTextColour: string): void {
        this.primaryTextColour = primaryTextColour;
    }

    public getSecondaryBGColour(): string {
        return this.secondaryBGColour;
    }

    public setSecondaryBGColour(secondaryBGColour: string): void {
        this.secondaryBGColour = secondaryBGColour;
    }

    public getSecondaryTextColour(): string {
        return this.secondaryTextColour;
    }

    public setSecondaryTextColour(secondaryTextColour: string): void {
        this.secondaryTextColour = secondaryTextColour;
    }

    public getHomepageBannerSmall(): string {
        return this.homepageBannerSmall;
    }

    public setHomepageBannerSmall(homepageBannerSmall: string): void {
        this.homepageBannerSmall = homepageBannerSmall;
    }

    public getHomepageBannerMedium(): string {
        return this.homepageBannerMedium;
    }

    public setHomepageBannerMedium(homepageBannerMedium: string): void {
        this.homepageBannerMedium = homepageBannerMedium;
    }

    public getCountryTab(): string {
        return this.countryTab;
    }

    public setCountryTab(countryTab: string): void {
        this.countryTab = countryTab;
    }

    public getCountryDD(): string {
        return this.countryDD;
    }

    public setCountryDD(countryDD: string): void {
        this.countryDD = countryDD;
    }

    public getDeleteCountry(): string {
        return this.deleteCountry;
    }

    public setDeleteCountry(deleteCountry: string): void {
        this.deleteCountry = deleteCountry;
    }

    public getLanguageTab(): string {
        return this.languageTab;
    }

    public setLanguageTab(languageTab: string): void {
        this.languageTab = languageTab;
    }

    public getLanguageDD(): string {
        return this.languageDD;
    }

    public setLanguageDD(languageDD: string): void {
        this.languageDD = languageDD;
    }

    public getDeleteLanguage(): string {
        return this.deleteLanguage;
    }

    public setDeleteLanguage(deleteLanguage: string): void {
        this.deleteLanguage = deleteLanguage;
    }

    public getPointsExpiry(): string {
        return this.pointsExpiry;
    }

    public setPointsExpiry(pointsExpiry: string): void {
        this.pointsExpiry = pointsExpiry;
    }

    public getFifoBankEnabled(): string {
        return this.fifoBankEnabled;
    }

    public setFifoBankEnabled(fifoBankEnabled: string): void {
        this.fifoBankEnabled = fifoBankEnabled;
    }

    public getShowExpiryData(): string {
        return this.showExpiryData;
    }

    public setShowExpiryData(showExpiryData: string): void {
        this.showExpiryData = showExpiryData;
    }

    public getExpiryInDays(): string {
        return this.expiryInDays;
    }

    public setExpiryInDays(expiryInDays: string): void {
        this.expiryInDays = expiryInDays;
    }

    public getExpiryInMonths(): string {
        return this.expiryInMonths;
    }

    public setExpiryInMonths(expiryInMonths: string): void {
        this.expiryInMonths = expiryInMonths;
    }

    public getExpiryPeriodValue(): string {
        return this.expiryPeriodValue;
    }

    public setExpiryPeriodValue(expiryPeriodValue: string): void {
        this.expiryPeriodValue = expiryPeriodValue;
    }

    public getProgramSubmit(): string {
        return this.programSubmit;
    }

    public setProgramSubmit(programSubmit: string): void {
        this.programSubmit = programSubmit;
    }

    public getProgramCancel(): string {
        return this.programCancel;
    }

    public setProgramCancel(programCancel: string): void {
        this.programCancel = programCancel;
    }

    public getTimeZone(): string {
        return this.timeZone;
    }

    public setTimeZone(timeZone: string): void {
        this.timeZone = timeZone;
    }

}

export default tenantProgram;
