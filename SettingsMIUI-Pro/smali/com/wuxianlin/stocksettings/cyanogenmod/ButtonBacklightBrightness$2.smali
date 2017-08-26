.class Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$2;
.super Ljava/lang/Object;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;


# direct methods
.method constructor <init>(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->access$4(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->access$5(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->access$5(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->access$6(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->access$6(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->reset()V

    :cond_1
    return-void
.end method
