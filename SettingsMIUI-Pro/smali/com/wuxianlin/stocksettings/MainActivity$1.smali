.class Lcom/wuxianlin/stocksettings/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuxianlin/stocksettings/MainActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuxianlin/stocksettings/MainActivity;


# direct methods
.method constructor <init>(Lcom/wuxianlin/stocksettings/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/MainActivity$1;->this$0:Lcom/wuxianlin/stocksettings/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/MainActivity$1;->this$0:Lcom/wuxianlin/stocksettings/MainActivity;

    # getter for: Lcom/wuxianlin/stocksettings/MainActivity;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/wuxianlin/stocksettings/MainActivity;->access$0(Lcom/wuxianlin/stocksettings/MainActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void
.end method
