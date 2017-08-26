.class Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;
.super Ljava/lang/Object;
.source "DisplayColor.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSeekBar"
.end annotation


# instance fields
.field private mIndex:I

.field private final mSeekBar:Lcom/wuxianlin/stocksettings/IntervalSeekBar;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;


# direct methods
.method public constructor <init>(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;Lcom/wuxianlin/stocksettings/IntervalSeekBar;Landroid/widget/TextView;I)V
    .locals 1

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/wuxianlin/stocksettings/IntervalSeekBar;

    iput-object p3, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mValue:Landroid/widget/TextView;

    iput p4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mIndex:I

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/wuxianlin/stocksettings/IntervalSeekBar;

    invoke-virtual {v0, p0}, Lcom/wuxianlin/stocksettings/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/wuxianlin/stocksettings/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/wuxianlin/stocksettings/IntervalSeekBar;

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p1

    check-cast v1, Lcom/wuxianlin/stocksettings/IntervalSeekBar;

    invoke-virtual {v1}, Lcom/wuxianlin/stocksettings/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F
    invoke-static {v4}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;)[F

    move-result-object v4

    iget v5, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mIndex:I

    cmpl-float v6, v0, v3

    if-lez v6, :cond_1

    :goto_0
    aput v3, v4, v5

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F
    invoke-static {v4}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;)[F

    move-result-object v4

    # invokes: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->updateColors([F)V
    invoke-static {v3, v4}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->access$1(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;[F)V

    :cond_0
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mValue:Landroid/widget/TextView;

    const-string v4, "%d%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
