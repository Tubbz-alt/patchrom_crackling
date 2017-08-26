.class public Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;
.super Landroid/app/AlertDialog;
.source "LightSettingsDialog.java"

# interfaces
.implements Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView$OnColorChangedListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    }
.end annotation


# static fields
.field private static final LED_UPDATE_DELAY_MS:J = 0xfaL

.field private static final STATE_KEY_COLOR:Ljava/lang/String; = "LightSettingsDialog:color"


# instance fields
.field private mColorPanel:Landroid/widget/LinearLayout;

.field private mColorPicker:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

.field private mHexColorInput:Landroid/widget/EditText;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLedHandler:Landroid/os/Handler;

.field private mLedLastColor:I

.field private mLedLastSpeedOff:I

.field private mLedLastSpeedOn:I

.field private mLightsDialogDivider:Landroid/view/View;

.field private mListener:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView$OnColorChangedListener;

.field private mNewColor:Lcom/wuxianlin/stocksettings/notificationlight/ColorPanelView;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPulseSpeedOff:Landroid/widget/Spinner;

.field private mPulseSpeedOn:Landroid/widget/Spinner;

.field private mReadyForLed:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;III)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$1;

    invoke-direct {v0, p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$1;-><init>(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)V

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$2;

    invoke-direct {v0, p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$2;-><init>(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)V

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->init(Landroid/content/Context;IIIZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$1;

    invoke-direct {v0, p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$1;-><init>(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)V

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$2;

    invoke-direct {v0, p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$2;-><init>(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)V

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p5}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->init(Landroid/content/Context;IIIZ)V

    return-void
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->updateLed()V

    return-void
.end method

.method static synthetic access$3(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private init(Landroid/content/Context;IIIZ)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    iput-boolean v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    iput v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->setUp(IIIZ)V

    return-void
.end method

.method private setUp(IIIZ)V
    .locals 8

    const/16 v7, 0x8

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "layout_inflater"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030002

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0e000e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

    const v3, 0x7f0e000f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPanel:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0010

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    const v3, 0x7f0e0011

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/wuxianlin/stocksettings/notificationlight/ColorPanelView;

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/wuxianlin/stocksettings/notificationlight/ColorPanelView;

    const v3, 0x7f0e0013

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLightsDialogDivider:Landroid/view/View;

    const v3, 0x7f0e0014

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    const v3, 0x7f0e0015

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

    invoke-virtual {v3, p0}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;->setOnColorChangedListener(Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView$OnColorChangedListener;)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

    invoke-virtual {v3, p1, v4}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;->setColor(IZ)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz p4, :cond_1

    new-instance v1, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;

    const/high16 v3, 0x7f060000

    const v5, 0x7f060001

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, p0, v3, v5, v6}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;-><init>(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;IILjava/lang/Integer;)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getTimePosition(Ljava/lang/Integer;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v1, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;

    const v3, 0x7f060002

    const v5, 0x7f060003

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, p0, v3, v5, v6}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;-><init>(Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;IILjava/lang/Integer;)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getTimePosition(Ljava/lang/Integer;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_0
    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v3, p4}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    if-eq p2, v4, :cond_2

    if-eqz p4, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->setView(Landroid/view/View;)V

    const v3, 0x7f0b0033

    invoke-virtual {p0, v3}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->setTitle(I)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1120048

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

    invoke-virtual {v3, v7}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;->setVisibility(I)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLightsDialogDivider:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-boolean v4, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->updateLed()V

    return-void

    :cond_1
    const v3, 0x7f0e0012

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateLed()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-boolean v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v5

    const v6, 0xffffff

    and-int v2, v5, v6

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v4

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v3

    :goto_1
    iget v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    if-ne v5, v2, :cond_2

    iget v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOn:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOff:I

    if-eq v5, v3, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    iput v4, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOn:I

    iput v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOff:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "android.forceShowLights"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    const v5, 0x7f020005

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0058

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0059

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x1

    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

    invoke-virtual {v2}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;->isAlphaSliderVisible()Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

    invoke-virtual {v2, v0}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;->setColor(I)V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/wuxianlin/stocksettings/notificationlight/ColorPanelView;

    invoke-virtual {v2, v0}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPanelView;->setColor(I)V

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->updateLed()V

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mListener:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mListener:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView$OnColorChangedListener;

    invoke-interface {v2, v0}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dismissLed()V
    .locals 2

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    return-void
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getPulseSpeedOff()I
    .locals 2

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPulseSpeedOn()I
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onColorChanged(I)V
    .locals 8

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

    invoke-virtual {v3}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;->isAlphaSliderVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "%08x"

    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/wuxianlin/stocksettings/notificationlight/ColorPanelView;

    invoke-virtual {v3, p1}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPanelView;->setColor(I)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    and-int v7, p1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mListener:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mListener:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView$OnColorChangedListener;

    invoke-interface {v3, p1}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->updateLed()V

    return-void

    :cond_1
    const-string v0, "%06x"

    goto :goto_0

    :cond_2
    const v2, 0xffffff

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

    const-string v1, "LightSettingsDialog:color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "LightSettingsDialog:color"

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->updateLed()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->dismissLed()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 5

    iget-object v1, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-direct {v4, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/wuxianlin/stocksettings/notificationlight/ColorPickerView;->setAlphaSliderVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method
