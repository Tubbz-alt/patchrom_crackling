.class Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$2;
.super Ljava/lang/Object;
.source "DisplayColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;


# direct methods
.method constructor <init>(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;
    invoke-static {v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->access$2(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;)[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F
    invoke-static {v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;)[F

    move-result-object v2

    # invokes: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->updateColors([F)V
    invoke-static {v1, v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->access$1(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;[F)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;
    invoke-static {v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->access$2(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;)[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    move-result-object v1

    aget-object v1, v1, v0

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/wuxianlin/stocksettings/IntervalSeekBar;
    invoke-static {v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/wuxianlin/stocksettings/IntervalSeekBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/wuxianlin/stocksettings/IntervalSeekBar;->setProgressFloat(F)V

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$2;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F
    invoke-static {v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;)[F

    move-result-object v1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
