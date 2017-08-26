.class public Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;
.super Landroid/preference/DialogPreference;
.source "DisplayColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;,
        Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$SavedState;
    }
.end annotation


# static fields
.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_VALUE_ID:[I

.field private static final TAG:Ljava/lang/String; = "ColorCalibration"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentColors:[F

.field private final mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

.field private final mOriginalColors:[F

.field private mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->SEEKBAR_VALUE_ID:[I

    return-void

    :array_0
    .array-data 4
        0x7f0e0018
        0x7f0e001b
        0x7f0e001e
    .end array-data

    :array_1
    .array-data 4
        0x7f0e0017
        0x7f0e001a
        0x7f0e001d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mOriginalColors:[F

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->setDialogLayoutResource(I)V

    return-void
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;)[F
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F

    return-object v0
.end method

.method static synthetic access$1(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->updateColors([F)V

    return-void
.end method

.method static synthetic access$2(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;)[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    return-object v0
.end method

.method private updateColors([F)V
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0, p1}, Lcyanogenmod/hardware/LiveDisplayManager;->setColorAdjustment([F)Z

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/LiveDisplayManager;->getColorAdjustment()[F

    move-result-object v4

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mOriginalColors:[F

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    return-void

    :cond_0
    sget-object v4, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/wuxianlin/stocksettings/IntervalSeekBar;

    sget-object v4, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->SEEKBAR_VALUE_ID:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    new-instance v5, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    invoke-direct {v5, p0, v2, v3, v0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;-><init>(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;Lcom/wuxianlin/stocksettings/IntervalSeekBar;Landroid/widget/TextView;I)V

    aput-object v5, v4, v0

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v4, v4, v0

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/wuxianlin/stocksettings/IntervalSeekBar;
    invoke-static {v4}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/wuxianlin/stocksettings/IntervalSeekBar;

    move-result-object v4

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v5}, Lcom/wuxianlin/stocksettings/IntervalSeekBar;->setMinimum(F)V

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v4, v4, v0

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/wuxianlin/stocksettings/IntervalSeekBar;
    invoke-static {v4}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/wuxianlin/stocksettings/IntervalSeekBar;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/wuxianlin/stocksettings/IntervalSeekBar;->setMaximum(F)V

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v4, v4, v0

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/wuxianlin/stocksettings/IntervalSeekBar;
    invoke-static {v4}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/wuxianlin/stocksettings/IntervalSeekBar;

    move-result-object v4

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/wuxianlin/stocksettings/IntervalSeekBar;->setProgressFloat(F)V

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v5, v5, v0

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    const-string v4, "%d%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F

    :goto_0
    invoke-direct {p0, v0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->updateColors([F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mOriginalColors:[F

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    const v0, 0x7f0b007f

    new-instance v1, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$1;

    invoke-direct {v1, p0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$1;-><init>(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$SavedState;

    invoke-virtual {v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v2, v1, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$SavedState;->originalColors:[F

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v2, v1, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$SavedState;->currentColors:[F

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-direct {p0, v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->updateColors([F)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v2, v2, v0

    # getter for: Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/wuxianlin/stocksettings/IntervalSeekBar;
    invoke-static {v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;->access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/wuxianlin/stocksettings/IntervalSeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/wuxianlin/stocksettings/IntervalSeekBar;->setProgressFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$SavedState;

    invoke-direct {v0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mCurrentColors:[F

    iput-object v2, v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$SavedState;->currentColors:[F

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mOriginalColors:[F

    iput-object v2, v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$SavedState;->originalColors:[F

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-direct {p0, v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->updateColors([F)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$2;

    invoke-direct {v2, p0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor$2;-><init>(Lcom/wuxianlin/stocksettings/livedisplay/DisplayColor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
