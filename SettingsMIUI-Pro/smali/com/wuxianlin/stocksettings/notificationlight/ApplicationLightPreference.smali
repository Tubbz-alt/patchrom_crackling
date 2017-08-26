.class public Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;
.super Landroid/preference/DialogPreference;
.source "ApplicationLightPreference.java"


# static fields
.field public static final DEFAULT_COLOR:I = 0xffffff

.field public static final DEFAULT_TIME:I = 0x3e8

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColorValue:I

.field private mLightColorView:Landroid/widget/ImageView;

.field private mOffValue:I

.field private mOffValueView:Landroid/widget/TextView;

.field private mOnOffChangeable:Z

.field private mOnValue:I

.field private mOnValueView:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AppLightPreference"

    sput-object v0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    iput p3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iput p4, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    iput p3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iput p4, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    iput-boolean p5, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/16 v1, 0x3e8

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0xffffff

    iput v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    iput v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iput v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;I)V
    .locals 0

    iput p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return-void
.end method

.method static synthetic access$1(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;I)V
    .locals 0

    iput p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return-void
.end method

.method static synthetic access$2(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;I)V
    .locals 0

    iput p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return-void
.end method

.method static synthetic access$3(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method static synthetic access$4(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static createOvalShape(II)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private init()V
    .locals 1

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5

    iget-boolean v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0035

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0036

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0035

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0036

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updatePreferenceViews()V
    .locals 6

    const v5, 0xf0f0f0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_4

    iget v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    const v3, 0x101010

    sub-int v0, v2, v3

    :goto_0
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    const/high16 v3, -0x1000000

    add-int/2addr v3, v0

    invoke-static {v1, v3}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->createOvalShape(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    if-eq v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    if-nez v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected createDialog()Landroid/app/Dialog;
    .locals 6

    new-instance v0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, -0x1000000

    iget v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iget v4, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    iget-boolean v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    invoke-direct/range {v0 .. v5}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;-><init>(Landroid/content/Context;IIIZ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->setAlphaSliderVisible(Z)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;

    invoke-direct {v3, p0, v0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$1;-><init>(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$2;

    invoke-direct {v3, p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference$2;-><init>(Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return v0
.end method

.method public getOffValue()I
    .locals 1

    iget v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return v0
.end method

.method public getOnValue()I
    .locals 1

    iget v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f0e0039

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    const v1, 0x7f0e0037

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    const v1, 0x7f0e0038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x1120048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->onStop()V

    :cond_0
    return-void
.end method

.method public setAllValues(III)V
    .locals 0

    iput p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    iput p2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iput p3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method public setAllValues(IIIZ)V
    .locals 0

    iput p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    iput p2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iput p3, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    iput-boolean p4, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method public setOffValue(I)V
    .locals 0

    iput p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method public setOnOffChangeable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    return-void
.end method

.method public setOnOffValue(II)V
    .locals 0

    iput p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iput p2, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method public setOnValue(I)V
    .locals 0

    iput p1, p0, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;

    return-void
.end method
