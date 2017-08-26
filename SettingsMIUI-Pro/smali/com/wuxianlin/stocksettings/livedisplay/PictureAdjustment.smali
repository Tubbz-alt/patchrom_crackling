.class public Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;
.super Landroid/preference/DialogPreference;
.source "PictureAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$ColorSeekBar;,
        Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$SavedState;
    }
.end annotation


# static fields
.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_VALUE_ID:[I

.field private static final TAG:Ljava/lang/String; = "PictureAdjustment"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentAdj:[F

.field private final mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

.field private final mOriginalAdj:[F

.field private final mRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$ColorSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->SEEKBAR_VALUE_ID:[I

    return-void

    :array_0
    .array-data 4
        0x7f0e0025
        0x7f0e0028
        0x7f0e002b
        0x7f0e002e
    .end array-data

    :array_1
    .array-data 4
        0x7f0e0024
        0x7f0e0027
        0x7f0e002a
        0x7f0e002d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$ColorSeekBar;

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$ColorSeekBar;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mRanges:Ljava/util/List;

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->setDialogLayoutResource(I)V

    return-void
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;)[F
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    return-object v0
.end method

.method static synthetic access$1(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mRanges:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    return-void
.end method

.method static synthetic access$3(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;)Lcyanogenmod/hardware/LiveDisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;)V
    .locals 0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->updateBars()V

    return-void
.end method

.method private updateAdjustment([F)V
    .locals 2

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-static {p1}, Lcyanogenmod/hardware/HSIC;->fromFloatArray([F)Lcyanogenmod/hardware/HSIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/LiveDisplayManager;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    return-void
.end method

.method private updateBars()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$ColorSeekBar;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$ColorSeekBar;->setValue(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/HSIC;->toFloatArray()[F

    move-result-object v0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    const/4 v5, 0x0

    :goto_0
    sget-object v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    array-length v0, v0

    if-lt v5, v0, :cond_0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->updateBars()V

    return-void

    :cond_0
    sget-object v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/wuxianlin/stocksettings/IntervalSeekBar;

    sget-object v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->SEEKBAR_VALUE_ID:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mRanges:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    iget-object v6, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mSeekBars:[Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$ColorSeekBar;

    new-instance v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$ColorSeekBar;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$ColorSeekBar;-><init>(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;Lcom/wuxianlin/stocksettings/IntervalSeekBar;Landroid/util/Range;Landroid/widget/TextView;I)V

    aput-object v0, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    :goto_0
    invoke-direct {p0, v0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    const v0, 0x7f0b007f

    new-instance v1, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$1;

    invoke-direct {v1, p0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$1;-><init>(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$SavedState;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$SavedState;->originalAdj:[F

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v1, v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$SavedState;->currentAdj:[F

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->updateBars()V

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    invoke-direct {p0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$SavedState;

    invoke-direct {v0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    iput-object v2, v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$SavedState;->currentAdj:[F

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    iput-object v2, v0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$SavedState;->originalAdj:[F

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    invoke-direct {p0, v2}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$2;

    invoke-direct {v2, p0}, Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment$2;-><init>(Lcom/wuxianlin/stocksettings/livedisplay/PictureAdjustment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
