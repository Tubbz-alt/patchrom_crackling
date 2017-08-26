.class public Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;
.super Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;
.source "BatteryLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FULL_COLOR_PREF:Ljava/lang/String; = "full_color"

.field private static final LIGHT_ENABLED_PREF:Ljava/lang/String; = "battery_light_enabled"

.field private static final LOW_COLOR_PREF:Ljava/lang/String; = "low_color"

.field private static final MEDIUM_COLOR_PREF:Ljava/lang/String; = "medium_color"

.field private static final MENU_RESET:I = 0x1

.field private static final PULSE_ENABLED_PREF:Ljava/lang/String; = "battery_light_pulse"

.field private static final TAG:Ljava/lang/String; = "BatteryLightSettings"


# instance fields
.field private mColorPrefs:Landroid/preference/PreferenceGroup;

.field private mFullColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

.field private mLightEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

.field private mLowColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

.field private mMediumColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

.field private mPulseEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private refreshDefault()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_0

    const-string v5, "battery_light_low_color"

    const v6, 0x10e0058

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v1, v7, v7, v7}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    :cond_0
    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_1

    const-string v5, "battery_light_medium_color"

    const v6, 0x10e0059

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v2, v7, v7, v7}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    :cond_1
    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_2

    const-string v5, "battery_light_full_color"

    const v6, 0x10e005a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v0, v7, v7, v7}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const v0, -0x7ffffffa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v2, 0x7f050000

    invoke-virtual {p0, v2}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "general_section"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string v2, "battery_light_enabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    const-string v2, "battery_light_pulse"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3f07000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->setHasOptionsMenu(Z)V

    const-string v2, "low_color"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "medium_color"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "full_color"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    return-void

    :cond_2
    const-string v2, "colors_list"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->resetColors()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f0b005b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020006

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->resetToDefaults()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->refreshDefault()V

    return-void
.end method

.method protected resetColors()V
    .locals 4

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "battery_light_low_color"

    const v3, 0x10e0058

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "battery_light_medium_color"

    const v3, 0x10e0059

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "battery_light_full_color"

    const v3, 0x10e005a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->refreshDefault()V

    return-void
.end method

.method protected resetToDefaults()V
    .locals 4

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    invoke-virtual {v3, v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;

    invoke-virtual {v3, v1}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->resetColors()V

    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "battery_light_low_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "medium_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "battery_light_medium_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const-string v1, "full_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "battery_light_full_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
