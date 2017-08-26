.class Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$2;
.super Ljava/lang/Object;
.source "PictureAdjustment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;


# direct methods
.method constructor <init>(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->access$3(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/HSIC;->toFloatArray()[F

    move-result-object v0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F
    invoke-static {v1}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;)[F

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;

    # invokes: Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->updateBars()V
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->access$4(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F
    invoke-static {v1}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;)[F

    move-result-object v1

    # invokes: Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->updateAdjustment([F)V
    invoke-static {v0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->access$2(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;[F)V

    return-void
.end method
