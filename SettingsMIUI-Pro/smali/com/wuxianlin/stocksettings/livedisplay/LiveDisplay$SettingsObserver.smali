.class final Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LiveDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;


# direct methods
.method public constructor <init>(Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;)V
    .locals 1

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "display_temperature_day"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    const-string v0, "display_temperature_night"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    const-string v0, "display_temperature_mode"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;

    # invokes: Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->updateModeSummary()V
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->access$2(Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;

    # invokes: Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->updateTemperatureSummary()V
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->access$3(Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;)V

    return-void
.end method

.method public register(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;

    # invokes: Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;->access$1(Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
