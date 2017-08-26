.class Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity$2;
.super Ljava/lang/Object;
.source "VibratorIntensity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;


# direct methods
.method constructor <init>(Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity$2;->this$0:Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity$2;->this$0:Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;

    # getter for: Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->access$0(Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity$2;->this$0:Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;

    # getter for: Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mDefaultValue:I
    invoke-static {v1}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->access$1(Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;)I

    move-result v1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity$2;->this$0:Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;

    # getter for: Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMinValue:I
    invoke-static {v2}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->access$2(Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
