.class public Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CMSystemSettingCheckBoxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getPersistedBoolean(Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move p1, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move p1, v2

    goto :goto_0
.end method

.method protected isPersisted()Z
    .locals 2

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->getPersistedBoolean(Z)Z

    move-result v0

    if-ne p1, v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/CMSystemSettingCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v3, v1}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_1
.end method
