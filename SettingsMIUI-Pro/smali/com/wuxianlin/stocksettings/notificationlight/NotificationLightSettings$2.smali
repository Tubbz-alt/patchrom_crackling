.class Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$2;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$2;->this$0:Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;

    iput-object p2, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wuxianlin/stocksettings/cyanogenmod/PackageListAdapter$PackageItem;

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$2;->this$0:Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;

    iget-object v2, v0, Lcom/wuxianlin/stocksettings/cyanogenmod/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    # invokes: Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->addCustomApplicationPref(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;->access$1(Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/NotificationLightSettings$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
