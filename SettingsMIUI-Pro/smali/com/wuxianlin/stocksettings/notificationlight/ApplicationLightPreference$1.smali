.class Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;
.super Ljava/lang/Object;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

.field private final synthetic val$d:Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iput-object p2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v1

    const/high16 v2, -0x1000000

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->access$0(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;I)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v1

    invoke-static {v0, v1}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->access$1(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;I)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v1

    invoke-static {v0, v1}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->access$2(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;I)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    # invokes: Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->access$3(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;

    # invokes: Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->access$4(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z

    return-void
.end method
