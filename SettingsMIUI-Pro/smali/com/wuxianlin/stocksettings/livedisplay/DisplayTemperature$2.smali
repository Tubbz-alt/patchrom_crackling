.class Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$2;
.super Ljava/lang/Object;
.source "DisplayTemperature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;


# direct methods
.method constructor <init>(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->access$3(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;)Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-static {v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/hardware/LiveDisplayConfig;->getDefaultDayTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->access$4(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;)Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-static {v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/hardware/LiveDisplayConfig;->getDefaultNightTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;

    const/4 v1, 0x1

    # invokes: Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->updateTemperature(Z)V
    invoke-static {v0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->access$1(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;Z)V

    return-void
.end method
