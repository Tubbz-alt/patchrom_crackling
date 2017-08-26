.class public Lcom/wuxianlin/stocksettings/MainActivity;
.super Lmiui/preference/PreferenceActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CATEGORY_LIGHTS:Ljava/lang/String; = "lights_prefs"

.field private static final DISABLE_NAV_KEYS:Ljava/lang/String; = "disable_nav_keys"

.field private static final KEY_BATTERY_LIGHT:Ljava/lang/String; = "battery_light"

.field private static final KEY_HOME_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_home_double_tap"

.field private static final KEY_LCD_DENSITY:Ljava/lang/String; = "lcd_density"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_TAP_TO_WAKE:Ljava/lang/String; = "double_tap_wake_gesture"

.field private static final KEY_WAKE_WHEN_PLUGGED_OR_UNPLUGGED:Ljava/lang/String; = "wake_when_plugged_or_unplugged"

.field private static final TAG:Ljava/lang/String; = "StockSettings"


# instance fields
.field private mBatteryPulse:Landroid/preference/Preference;

.field private mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mLcdDensityPreference:Landroid/preference/ListPreference;

.field private mNotificationPulse:Landroid/preference/Preference;

.field private mTapToWake:Landroid/preference/CheckBoxPreference;

.field private mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/MainActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private getCurrentDensity()I
    .locals 4

    const/4 v2, 0x0

    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDefaultDensity()I
    .locals 4

    const/4 v2, 0x0

    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private initStyle()V
    .locals 1

    sget v0, Lmiui/R$style;->Theme_Light_Settings:I

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/MainActivity;->setTheme(I)V

    return-void
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x11200b1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static restoreKeyDisabler(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dev_force_show_navbar"

    invoke-static {v2, v3, v1}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p0, v1}, Lcom/wuxianlin/stocksettings/MainActivity;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private updateLcdDensityPreferenceDescription(I)V
    .locals 5

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getDefaultDensity()I

    move-result v1

    if-ne p1, v1, :cond_0

    const v0, 0x7f0b002d

    :goto_0
    iget-object v1, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mLcdDensityPreference:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/wuxianlin/stocksettings/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v0, 0x7f0b002c

    goto :goto_0
.end method

.method private static writeDisableNavkeysOption(Landroid/content/Context;Z)V
    .locals 8

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e006f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dev_force_show_navbar"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v6, v7, v4}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v1, v4, p1}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "button_brightness"

    invoke-static {v4, v6, v5}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return-void

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    const-string v4, "pre_navbar_button_backlight"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "button_brightness"

    invoke-static {v4, v5, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private writeLcdDensityPreference(Landroid/content/Context;I)V
    .locals 6

    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v5

    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    new-instance v0, Lcom/wuxianlin/stocksettings/MainActivity$2;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/wuxianlin/stocksettings/MainActivity$2;-><init>(Lcom/wuxianlin/stocksettings/MainActivity;Landroid/content/Context;Landroid/view/IWindowManager;ILandroid/app/IActivityManager;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 22

    invoke-direct/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->initStyle()V

    invoke-super/range {p0 .. p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v17, 0x7f050003

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/MainActivity;->addPreferencesFromResource(I)V

    const-string v17, "double_tap_wake_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wuxianlin/stocksettings/MainActivity;->mTapToWake:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mTapToWake:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wuxianlin/stocksettings/MainActivity;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "hardware_keys_home_double_tap"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wuxianlin/stocksettings/MainActivity;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "key_home_double_tap_action"

    invoke-virtual/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e005f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    invoke-static/range {v18 .. v20}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static/range {p0 .. p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v9

    const-string v17, "disable_nav_keys"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wuxianlin/stocksettings/MainActivity;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x20

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v19, "dev_force_show_navbar"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_3

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1120047

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1120049

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    const-string v17, "lights_prefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    if-nez v11, :cond_0

    if-eqz v10, :cond_4

    :cond_0
    const-string v17, "battery_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wuxianlin/stocksettings/MainActivity;->mBatteryPulse:Landroid/preference/Preference;

    const-string v17, "notification_pulse"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wuxianlin/stocksettings/MainActivity;->mNotificationPulse:Landroid/preference/Preference;

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mNotificationPulse:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wuxianlin/stocksettings/MainActivity;->mNotificationPulse:Landroid/preference/Preference;

    :cond_1
    :goto_1
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wuxianlin/stocksettings/MainActivity;->mHandler:Landroid/os/Handler;

    const-string v17, "wake_when_plugged_or_unplugged"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wuxianlin/stocksettings/MainActivity;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    const-string v17, "lcd_density"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wuxianlin/stocksettings/MainActivity;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    sget v18, Landroid/os/UserHandle;->USER_OWNER:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getDefaultDensity()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getCurrentDensity()I

    move-result v3

    const/16 v17, 0xa

    move/from16 v0, v17

    if-lt v3, v0, :cond_6

    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-lt v3, v0, :cond_7

    :cond_6
    move v3, v5

    :cond_7
    const/16 v17, 0x1e0

    move/from16 v0, v17

    if-lt v5, v0, :cond_9

    const/16 v8, 0x28

    :goto_3
    mul-int/lit8 v17, v8, 0x4

    sub-int v14, v5, v17

    const/4 v4, -0x1

    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_4
    const/16 v17, 0x7

    move/from16 v0, v17

    if-lt v12, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wuxianlin/stocksettings/MainActivity;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/wuxianlin/stocksettings/MainActivity;->updateLcdDensityPreferenceDescription(I)V

    goto :goto_2

    :cond_9
    const/16 v8, 0x14

    goto :goto_3

    :cond_a
    mul-int v17, v8, v12

    add-int v15, v14, v17

    if-ne v15, v5, :cond_c

    const v16, 0x7f0b002d

    :goto_5
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/wuxianlin/stocksettings/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v12

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v12

    if-ne v3, v15, :cond_b

    move v4, v12

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_c
    const v16, 0x7f0b002c

    goto :goto_5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_home_double_tap_action"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mLcdDensityPreference:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/wuxianlin/stocksettings/MainActivity;->writeLcdDensityPreference(Landroid/content/Context;I)V

    invoke-direct {p0, v2}, Lcom/wuxianlin/stocksettings/MainActivity;->updateLcdDensityPreferenceDescription(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "StockSettings"

    const-string v4, "could not persist display density setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mTapToWake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tap_to_wake"

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mTapToWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/wuxianlin/stocksettings/MainActivity;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/wuxianlin/stocksettings/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/wuxianlin/stocksettings/MainActivity$1;-><init>(Lcom/wuxianlin/stocksettings/MainActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wake_when_plugged_or_unplugged"

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public onResume()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mTapToWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "double_tap_to_wake"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x112002b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/MainActivity;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wake_when_plugged_or_unplugged"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v5, v6, v1}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method
