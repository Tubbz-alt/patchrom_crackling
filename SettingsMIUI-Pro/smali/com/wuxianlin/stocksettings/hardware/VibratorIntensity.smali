.class public Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;
.super Landroid/preference/DialogPreference;
.source "VibratorIntensity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# static fields
.field private static final PREF_NAME:Ljava/lang/String; = "vibrator_intensity"


# instance fields
.field private mDefaultValue:I

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mMaxValue:I

.field private mMinValue:I

.field private mOriginalValue:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressThumb:Landroid/graphics/drawable/Drawable;

.field private mRedFilter:Landroid/graphics/LightingColorFilter;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:Landroid/widget/TextView;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWarning:Landroid/widget/TextView;

.field private mWarningValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->setDialogLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;)I
    .locals 1

    iget v0, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mDefaultValue:I

    return v0
.end method

.method static synthetic access$2(Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;)I
    .locals 1

    iget v0, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMinValue:I

    return v0
.end method

.method private static intensityToPercent(III)I
    .locals 4

    sub-int v1, p2, p0

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    sub-int v3, p1, p0

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    const/16 v0, 0x64

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    return v1
.end method

.method private static percentToIntensity(III)I
    .locals 3

    sub-int v1, p1, p0

    mul-int/2addr v1, p2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v2, p0

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-le v0, p1, :cond_1

    move v0, p1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge v0, p0, :cond_0

    move v0, p0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 9

    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    const/16 v6, 0x400

    invoke-virtual {v1, v6}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMinIntensity()I

    move-result v3

    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMaxIntensity()I

    move-result v2

    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorDefaultIntensity()I

    move-result v0

    const-string v6, "vibrator_intensity"

    invoke-static {v3, v2, v0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vibrator_intensity"

    invoke-static {v3, v2, v4}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->percentToIntensity(III)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityStop()V
    .locals 2

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    iget v1, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mOriginalValue:I

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->setVibratorIntensity(I)Z

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v3, 0x7f0e003c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    const v3, 0x7f0e0006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mValue:Landroid/widget/TextView;

    const v3, 0x7f0e003d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensity()I

    move-result v3

    iput v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mOriginalValue:I

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorWarningIntensity()I

    move-result v3

    iput v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mWarningValue:I

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMinIntensity()I

    move-result v3

    iput v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMinValue:I

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMaxIntensity()I

    move-result v3

    iput v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMaxValue:I

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorDefaultIntensity()I

    move-result v3

    iput v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mDefaultValue:I

    iget v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mWarningValue:I

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00a5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMinValue:I

    iget v8, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMaxValue:I

    iget v9, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mWarningValue:I

    invoke-static {v7, v8, v9}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x102000d

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/LightingColorFilter;

    const/high16 v4, -0x1000000

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMaxValue:I

    iget v5, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMinValue:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mOriginalValue:I

    iget v5, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMinValue:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMinValue:I

    add-int v0, v3, v4

    iget v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMinValue:I

    iget v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMaxValue:I

    invoke-static {v3, v4, v0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "vibrator_intensity"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrator_intensity"

    invoke-static {v3, v4, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrator_intensity"

    iget v5, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mOriginalValue:I

    invoke-static {v3, v4, v5}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    const v0, 0x7f0b007f

    new-instance v1, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity$1;

    invoke-direct {v1, p0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity$1;-><init>(Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMinValue:I

    add-int v0, p2, v4

    iget v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mWarningValue:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mWarningValue:I

    if-lt v0, v4, :cond_3

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :goto_1
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :cond_1
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object v4, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mValue:Landroid/widget/TextView;

    const-string v5, "%d%%"

    new-array v2, v2, [Ljava/lang/Object;

    iget v6, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMinValue:I

    iget v7, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMaxValue:I

    invoke-static {v6, v7, v0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move-object v4, v5

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->mMinValue:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->setVibratorIntensity(I)Z

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity$2;

    invoke-direct {v2, p0}, Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity$2;-><init>(Lcom/wuxianlin/stocksettings/hardware/VibratorIntensity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
