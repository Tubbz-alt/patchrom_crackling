.class public Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;
.super Landroid/preference/DialogPreference;
.source "DisplayTemperature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;,
        Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;
    }
.end annotation


# static fields
.field private static final STEP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DisplayTemperature"


# instance fields
.field private final mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

.field private final mContext:Landroid/content/Context;

.field private mDayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

.field private final mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

.field private mNightTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

.field private mOriginalDayTemperature:I

.field private mOriginalNightTemperature:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->setDialogLayoutResource(I)V

    return-void
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;)Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;)Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    return-object v0
.end method

.method private updateTemperature(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v1

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->callChangeListener(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2, v0}, Lcyanogenmod/hardware/LiveDisplayManager;->setDayColorTemperature(I)Z

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2, v1}, Lcyanogenmod/hardware/LiveDisplayManager;->setNightColorTemperature(I)Z

    return-void

    :cond_0
    iget v0, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    goto :goto_1
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/LiveDisplayManager;->getDayColorTemperature()I

    move-result v4

    iput v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/LiveDisplayManager;->getNightColorTemperature()I

    move-result v4

    iput v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    const v4, 0x7f0e0032

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const v4, 0x7f0e0031

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-direct {v4, p0, v0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;-><init>(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    const v4, 0x7f0e0035

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    const v4, 0x7f0e0034

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-direct {v4, p0, v2, v3}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;-><init>(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v5, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    invoke-virtual {v4, v5}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v5, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    invoke-virtual {v4, v5}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    invoke-direct {p0, p1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    const v0, 0x7f0b007f

    new-instance v1, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$1;

    invoke-direct {v1, p0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$1;-><init>(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;->originalDayTemperature:I

    iput v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    iget v1, v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;->originalNightTemperature:I

    iput v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v2, v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;->currentDayTemperature:I

    invoke-virtual {v1, v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v2, v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;->currentNightTemperature:I

    invoke-virtual {v1, v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;

    invoke-direct {v0, v1}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    iput v2, v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;->originalDayTemperature:I

    iget v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    iput v2, v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;->originalNightTemperature:I

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v2

    iput v2, v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;->currentDayTemperature:I

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v2

    iput v2, v0, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$SavedState;->currentNightTemperature:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    goto :goto_0
.end method

.method roundUp(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x32

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$2;

    invoke-direct {v2, p0}, Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature$2;-><init>(Lcom/wuxianlin/stocksettings/livedisplay/DisplayTemperature;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
