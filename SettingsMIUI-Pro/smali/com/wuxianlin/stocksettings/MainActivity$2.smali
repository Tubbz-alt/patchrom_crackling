.class Lcom/wuxianlin/stocksettings/MainActivity$2;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuxianlin/stocksettings/MainActivity;->writeLcdDensityPreference(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuxianlin/stocksettings/MainActivity;

.field private final synthetic val$am:Landroid/app/IActivityManager;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$density:I

.field private final synthetic val$wm:Landroid/view/IWindowManager;


# direct methods
.method constructor <init>(Lcom/wuxianlin/stocksettings/MainActivity;Landroid/content/Context;Landroid/view/IWindowManager;ILandroid/app/IActivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/MainActivity$2;->this$0:Lcom/wuxianlin/stocksettings/MainActivity;

    iput-object p2, p0, Lcom/wuxianlin/stocksettings/MainActivity$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/wuxianlin/stocksettings/MainActivity$2;->val$wm:Landroid/view/IWindowManager;

    iput p4, p0, Lcom/wuxianlin/stocksettings/MainActivity$2;->val$density:I

    iput-object p5, p0, Lcom/wuxianlin/stocksettings/MainActivity$2;->val$am:Landroid/app/IActivityManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/wuxianlin/stocksettings/MainActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/wuxianlin/stocksettings/MainActivity$2;->val$wm:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/wuxianlin/stocksettings/MainActivity$2;->val$density:I

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setForcedDisplayDensity(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/wuxianlin/stocksettings/MainActivity$2;->val$am:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->restart()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "StockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to set density to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/wuxianlin/stocksettings/MainActivity$2;->val$density:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "StockSettings"

    const-string v2, "Failed to restart"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/MainActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/MainActivity$2;->this$0:Lcom/wuxianlin/stocksettings/MainActivity;

    invoke-virtual {v1}, Lcom/wuxianlin/stocksettings/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
