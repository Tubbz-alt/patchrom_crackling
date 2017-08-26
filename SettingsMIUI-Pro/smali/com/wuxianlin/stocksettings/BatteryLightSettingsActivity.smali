.class public Lcom/wuxianlin/stocksettings/BatteryLightSettingsActivity;
.super Lmiui/app/Activity;
.source "BatteryLightSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method private initStyle()V
    .locals 1

    sget v0, Lmiui/R$style;->Theme_Light_Settings:I

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/BatteryLightSettingsActivity;->setTheme(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/BatteryLightSettingsActivity;->initStyle()V

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/BatteryLightSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;

    invoke-direct {v2}, Lcom/wuxianlin/stocksettings/notificationlight/BatteryLightSettings;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/BatteryLightSettingsActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
