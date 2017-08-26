.class public Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;
.super Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;",
        "Landroid/preference/Preference$OnPreferenceChangeListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field public static final ACTION_DELETE:I = 0x1

.field public static final ACTION_TEST:I = 0x0

.field private static final DEFAULT_PREF:Ljava/lang/String; = "default"

.field private static final DIALOG_APPS:I = 0x0

.field private static final MENU_ADD:I = 0x0

.field private static final MISSED_CALL_PREF:Ljava/lang/String; = "missed_call"

.field private static final TAG:Ljava/lang/String; = "NotificationLightSettings"

.field private static final VOICEMAIL_PREF:Ljava/lang/String; = "voicemail"


# instance fields
.field private mApplicationPrefList:Landroid/preference/PreferenceGroup;

.field private mAutoGenerateColors:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

.field private mCallPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

.field private mCustomEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

.field private mDefaultColor:I

.field private mDefaultLedOff:I

.field private mDefaultLedOn:I

.field private mDefaultPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

.field private mEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/SystemSettingCheckBoxPreference;

.field private mMenu:Landroid/view/Menu;

.field private mMultiColorLed:Z

.field private mMultipleLedsEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

.field private mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

.field private mPackageAdapter:Lcom/wuxianlin/stocksettings/cyanogenmod/PackageListAdapter;

.field private mPackageList:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnLightsPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

.field private mVoicemailPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->removeCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->addCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method private addCustomApplicationPref(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getInitialColorForPackage(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    :cond_0
    return-void
.end method

.method private getInitialColorForPackage(Ljava/lang/String;)I
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_light_color_auto"

    iget-boolean v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v0, v4

    :goto_1
    iget v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcyanogenmod/util/ColorUtils;->generateAlertColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private parsePackageList()Z
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_light_pulse_custom_values"

    invoke-static {v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iput-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    if-eqz v1, :cond_1

    const-string v5, "\\|"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    :goto_1
    if-lt v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;->fromString(Ljava/lang/String;)Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    iget-object v7, v3, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private refreshCustomApplicationPrefs()V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->parsePackageList()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v6, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v6, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b005a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b004e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v10

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;

    :try_start_0
    iget-object v7, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v2, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    new-instance v3, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iget-object v7, v2, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v2, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v2, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v3, v0, v7, v8, v9}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;-><init>(Landroid/content/Context;III)V

    iget-object v7, v2, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setKey(Ljava/lang/String;)V

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setPersistent(Z)V

    invoke-virtual {v3, p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method

.method private refreshDefault()V
    .locals 12

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v10, "notification_light_pulse_default_color"

    iget v11, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v10, "notification_light_pulse_default_led_on"

    iget v11, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string v10, "notification_light_pulse_default_led_off"

    iget v11, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v3, v6, v5}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_0

    const-string v10, "notification_light_pulse_call_color"

    iget v11, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v10, "notification_light_pulse_call_led_on"

    iget v11, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v10, "notification_light_pulse_call_led_off"

    iget v11, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v0, v2, v1}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    :cond_0
    iget-object v10, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_1

    const-string v10, "notification_light_pulse_vmail_color"

    iget v11, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v10, "notification_light_pulse_vmail_led_on"

    iget v11, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string v10, "notification_light_pulse_vmail_led_off"

    iget v11, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v7, v9, v8}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    :cond_1
    const-string v10, "applications_list"

    invoke-virtual {p0, v10}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    iput-object v10, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    return-void
.end method

.method private removeCustomApplicationPref(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    :cond_0
    return-void
.end method

.method private savePackageList(Z)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "|"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse_custom_values"

    invoke-static {v3, v4, v2}, Lcyanogenmod/providers/CMSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    if-eqz v4, :cond_3

    move-object v0, v3

    check-cast v0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->onStart()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->onStop()V

    goto :goto_1

    :cond_3
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const v0, -0x7ffffff5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f050002

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "advanced_section"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const v5, 0x1060104

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iput v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    const v5, 0x10e0056

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    const v5, 0x10e0057

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    const-string v5, "notification_light_pulse"

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/wuxianlin/stocksettings/cyanogenmod/SystemSettingCheckBoxPreference;

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/SystemSettingCheckBoxPreference;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/SystemSettingCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/SystemSettingCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "default"

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "notification_light_color_auto"

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    const-string v5, "notification_light_brightness_level"

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    const-string v5, "notification_light_multiple_leds_enable"

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    const-string v5, "notification_light_screen_on_enable"

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "notification_light_pulse_custom_enable"

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v5, 0x3f070008

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    const v5, 0x3f070009

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "phone_list"

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->removePreference(Ljava/lang/String;)V

    :goto_2
    const-string v5, "applications_list"

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v5, Lcom/wuxianlin/stocksettings/cyanogenmod/PackageListAdapter;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/wuxianlin/stocksettings/cyanogenmod/PackageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/wuxianlin/stocksettings/cyanogenmod/PackageListAdapter;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->setHasOptionsMenu(Z)V

    const v5, 0x1120048

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    iget-boolean v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->resetColors()V

    const-string v5, "general_section"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_3
    return-void

    :cond_0
    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    :cond_2
    const-string v5, "missed_call"

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "voicemail"

    invoke-virtual {p0, v5}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iput-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/wuxianlin/stocksettings/cyanogenmod/PackageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v3, 0x7f0b005f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$2;-><init>(Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0b0060

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eq v2, v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0037

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0038

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$1;

    invoke-direct {v4, p0, v1}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$1;-><init>(Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->showDialog(I)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/SystemSettingCheckBoxPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getOnValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getOffValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/SystemSettingCheckBoxPreference;

    invoke-virtual {v2}, Lcom/wuxianlin/stocksettings/cyanogenmod/SystemSettingCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    invoke-virtual {v2}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    return-void
.end method

.method protected resetColors()V
    .locals 3

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse_default_color"

    iget v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "notification_light_pulse_call_color"

    iget v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "notification_light_pulse_vmail_color"

    iget v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "notification_light_pulse_default_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "notification_light_pulse_default_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "notification_light_pulse_default_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "missed_call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "notification_light_pulse_call_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "notification_light_pulse_call_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "notification_light_pulse_call_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    :cond_2
    const-string v2, "voicemail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "notification_light_pulse_vmail_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "notification_light_pulse_vmail_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "notification_light_pulse_vmail_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;

    if-eqz v0, :cond_0

    iput-object p2, v0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    iput-object p3, v0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    iput-object p4, v0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    goto :goto_0
.end method
