.class public Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;
.super Landroid/preference/DialogPreference;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;,
        Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUTTON_TIMEOUT:I = 0x5

.field public static final KEY_BUTTON_BACKLIGHT:Ljava/lang/String; = "pre_navbar_button_backlight"

.field public static final KEY_MASK_APP_SWITCH:I = 0x10

.field public static final KEY_MASK_ASSIST:I = 0x8

.field public static final KEY_MASK_BACK:I = 0x2

.field public static final KEY_MASK_CAMERA:I = 0x20

.field public static final KEY_MASK_HOME:I = 0x1

.field public static final KEY_MASK_MENU:I = 0x4

.field public static final KEY_MASK_VOLUME:I = 0x40


# instance fields
.field private mActiveControl:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTimeoutBar:Landroid/widget/SeekBar;

.field private mTimeoutContainer:Landroid/view/ViewGroup;

.field private mTimeoutValue:Landroid/widget/TextView;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->setDialogLayoutResource(I)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->isKeyboardSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const-string v3, "keyboard_brightness"

    invoke-direct {v2, p0, v3, v1}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;-><init>(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    :cond_0
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->isButtonSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v2, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const-string v3, "button_brightness"

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;-><init>(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;ZI)V

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    :cond_1
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-void
.end method

.method static synthetic access$2(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V

    return-void
.end method

.method static synthetic access$3(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->updateTimeoutEnabledState()V

    return-void
.end method

.method static synthetic access$4(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$5(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-object v0
.end method

.method static synthetic access$6(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-object v0
.end method

.method private applyTimeout(I)V
    .locals 3

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "button_backlight_timeout"

    mul-int/lit16 v2, p1, 0x3e8

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private getTimeout()I
    .locals 3

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "button_backlight_timeout"

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private getTimeoutString(I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleTimeoutUpdate(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getTimeoutString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateBrightnessPreview()V
    .locals 3

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    :goto_0
    iget-object v1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    goto :goto_0
.end method

.method private updateTimeoutEnabledState()V
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v4, v3}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    :goto_0
    iget-object v4, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2
.end method


# virtual methods
.method public isButtonSupported()Z
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e0062

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_0

    and-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_0

    and-int/lit8 v6, v0, 0x4

    if-nez v6, :cond_0

    and-int/lit8 v6, v0, 0x8

    if-nez v6, :cond_0

    and-int/lit8 v6, v0, 0x10

    if-nez v6, :cond_0

    move v2, v4

    :goto_0
    const v6, 0x10e006f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-lez v6, :cond_1

    move v1, v5

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v5

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    move v5, v4

    goto :goto_2
.end method

.method public isKeyboardSupported()Z
    .locals 2

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x8

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v2, 0x7f0e0008

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0e000b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    const v2, 0x7f0e000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->handleTimeoutUpdate(I)V

    const v2, 0x7f0e0001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->init(Landroid/view/ViewGroup;)V

    :goto_0
    const v2, 0x7f0e000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v1}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->init(Landroid/view/ViewGroup;)V

    :goto_1
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-nez v2, :cond_1

    :cond_0
    const v2, 0x7f0e000c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pre_navbar_button_backlight"

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->applyTimeout(I)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->applyBrightness()V

    :cond_2
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->applyBrightness()V

    :cond_3
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    const v0, 0x7f0b007f

    new-instance v1, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$1;

    invoke-direct {v1, p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$1;-><init>(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->handleTimeoutUpdate(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    iget v2, v0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iget v2, v0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    invoke-virtual {v1, v2}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    :cond_3
    iget-object v1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iget v2, v0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

    invoke-virtual {v1, v2}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    invoke-direct {v0, v1}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    iput v2, v0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    :cond_3
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    iput v2, v0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

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

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$2;

    invoke-direct {v2, p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$2;-><init>(Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    :cond_0
    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V

    return-void
.end method

.method public updateSummary()V
    .locals 7

    const v3, 0x7f0b007c

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v4}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getTimeout()I

    move-result v1

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    if-nez v1, :cond_1

    const v2, 0x7f0b007b

    invoke-virtual {p0, v2}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b007d

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v1}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->getTimeoutString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v4}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0b007e

    invoke-virtual {p0, v2}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/wuxianlin/stocksettings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0
.end method
