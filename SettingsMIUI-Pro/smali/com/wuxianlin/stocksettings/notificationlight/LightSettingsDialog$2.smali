.class Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$2;
.super Landroid/os/Handler;
.source "LightSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$2;->this$0:Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$2;->this$0:Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;

    # invokes: Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->updateLed()V
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->access$2(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)V

    return-void
.end method
