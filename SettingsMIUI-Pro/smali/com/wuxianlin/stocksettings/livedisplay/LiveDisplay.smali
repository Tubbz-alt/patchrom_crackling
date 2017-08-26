.class public Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;
.super Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;
.source "LiveDisplay.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_CATEGORY_ADVANCED:Ljava/lang/String; = "advanced"

.field private static final KEY_CATEGORY_LIVE_DISPLAY:Ljava/lang/String; = "live_display_options"

.field private static final KEY_DISPLAY_COLOR:Ljava/lang/String; = "color_calibration"

.field private static final KEY_LIVE_DISPLAY:Ljava/lang/String; = "live_display"

.field private static final KEY_LIVE_DISPLAY_AUTO_OUTDOOR_MODE:Ljava/lang/String; = "display_auto_outdoor_mode"

.field private static final KEY_LIVE_DISPLAY_COLOR_ENHANCE:Ljava/lang/String; = "display_color_enhance"

.field private static final KEY_LIVE_DISPLAY_COLOR_PROFILE:Ljava/lang/String; = "live_display_color_profile"

.field private static final KEY_LIVE_DISPLAY_LOW_POWER:Ljava/lang/String; = "display_low_power"

.field private static final KEY_LIVE_DISPLAY_TEMPERATURE:Ljava/lang/String; = "live_display_color_temperature"

.field private static final KEY_PICTURE_ADJUSTMENT:Ljava/lang/String; = "picture_adjustment"

.field private static final TAG:Ljava/lang/String; = "LiveDisplay"


# instance fields
.field private mColorEnhancement:Landroid/preference/CheckBoxPreference;

.field private mColorProfile:Landroid/preference/ListPreference;

.field private mColorProfileSummaries:[Ljava/lang/String;

.field private mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

.field private mDisplayColor:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

.field private mDisplayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

.field private final mHandler:Landroid/os/Handler;

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mHasDisplayModes:Z

.field private mLiveDisplay:Landroid/preference/ListPreference;

.field private mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

.field private mLowPower:Landroid/preference/CheckBoxPreference;

.field private mModeEntries:[Ljava/lang/String;

.field private mModeSummaries:[Ljava/lang/String;

.field private mModeValues:[Ljava/lang/String;

.field private final mObserver:Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;

.field private mOutdoorMode:Landroid/preference/CheckBoxPreference;

.field private mPictureAdjustment:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;-><init>(Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;)V

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mObserver:Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    return-void
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->updateModeSummary()V

    return-void
.end method

.method static synthetic access$3(Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    return-void
.end method

.method private getStringForResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "string"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No resource found for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private static isPostProcessingSupported(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.qualcomm.display"

    invoke-static {p0, v0}, Lcom/wuxianlin/stocksettings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateColorProfileSummary(Ljava/lang/String;)V
    .locals 5

    iget-boolean v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    iget v2, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ltz v2, :cond_1

    iget v2, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No summary resource found for profile "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDisplayModes()Z
    .locals 15

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v12}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v12, v4

    if-nez v12, :cond_2

    :cond_0
    move v10, v11

    :cond_1
    :goto_0
    return v10

    :cond_2
    iget-object v12, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v12}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v12}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    :goto_1
    const/4 v1, -0x1

    array-length v12, v4

    new-array v2, v12, [Ljava/lang/String;

    array-length v12, v4

    new-array v9, v12, [Ljava/lang/String;

    array-length v12, v4

    new-array v12, v12, [Ljava/lang/String;

    iput-object v12, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    const/4 v3, 0x0

    :goto_2
    array-length v12, v4

    if-lt v3, v12, :cond_4

    iget-object v11, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v11, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_1

    iget-object v11, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v12, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v12}, Lcyanogenmod/hardware/CMHardwareManager;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    goto :goto_1

    :cond_4
    aget-object v12, v4, v3

    iget v12, v12, Lcyanogenmod/hardware/DisplayMode;->id:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v3

    aget-object v12, v4, v3

    iget-object v12, v12, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    const-string v14, "_"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "live_display_color_profile_%s_title"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v5, v13, v11

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aget-object v12, v4, v3

    iget-object v12, v12, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v12}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->getStringForResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v3

    const-string v12, "live_display_color_profile_%s_summary"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v5, v13, v11

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    invoke-direct {p0, v8, v12}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->getStringForResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v12, "%s - %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aget-object v14, v2, v3

    aput-object v14, v13, v11

    aput-object v7, v13, v10

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    iget-object v12, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    aput-object v7, v12, v3

    if-eqz v0, :cond_6

    aget-object v12, v4, v3

    iget v12, v12, Lcyanogenmod/hardware/DisplayMode;->id:I

    iget v13, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ne v12, v13, :cond_6

    iget v1, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private updateModeSummary()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayManager;->getMode()I

    move-result v1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    if-eqz v1, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method private updateTemperatureSummary()V
    .locals 8

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayManager;->getDayColorTemperature()I

    move-result v0

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayManager;->getNightColorTemperature()I

    move-result v1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0009

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    invoke-virtual {v7, v0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->roundUp(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    invoke-virtual {v7, v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->roundUp(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const v0, -0x7ffffff6

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x0

    invoke-super {p0, p1}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v10

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v10

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v10}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v10

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const v10, 0x7f050001

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->addPreferencesFromResource(I)V

    const-string v10, "live_display_options"

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    const-string v10, "advanced"

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v10}, Lcyanogenmod/hardware/LiveDisplayManager;->getMode()I

    move-result v0

    const-string v10, "live_display"

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const v10, 0x3f050002

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    const v10, 0x3f050004

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    const v10, 0x3f050003

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    invoke-virtual {v10, v13}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    new-array v2, v10, [Ljava/lang/String;

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    new-array v9, v10, [Ljava/lang/String;

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    array-length v10, v10

    if-lt v3, v10, :cond_7

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    iput-object v9, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    iput-object v8, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    :cond_0
    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v10, "live_display_color_temperature"

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    const-string v10, "live_display_color_profile"

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    if-eqz v6, :cond_9

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->updateDisplayModes()Z

    move-result v10

    if-nez v10, :cond_9

    :cond_1
    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    const-string v10, "display_auto_outdoor_mode"

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_2

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    invoke-virtual {v10, v13}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/CheckBoxPreference;

    :cond_2
    const-string v10, "display_low_power"

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/CheckBoxPreference;

    :cond_3
    const-string v10, "display_color_enhance"

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/CheckBoxPreference;

    :cond_4
    const-string v10, "picture_adjustment"

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mPictureAdjustment:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;

    if-eqz v1, :cond_5

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mPictureAdjustment:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mPictureAdjustment:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mPictureAdjustment:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;

    :cond_5
    const-string v10, "color_calibration"

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mDisplayColor:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    if-eqz v1, :cond_6

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mDisplayColor:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mDisplayColor:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mDisplayColor:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    :cond_6
    return-void

    :cond_7
    if-ne v3, v4, :cond_8

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    aget-object v10, v10, v3

    aput-object v10, v2, v5

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    aget-object v10, v10, v3

    aput-object v10, v9, v5

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    aget-object v10, v10, v3

    aput-object v10, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mObserver:Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcyanogenmod/hardware/LiveDisplayManager;->setMode(I)Z

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    iget v5, v1, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ne v5, v0, :cond_2

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2, v1, v6}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->updateColorProfileSummary(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->updateModeSummary()V

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->updateColorProfileSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mObserver:Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->register(Z)V

    return-void
.end method
