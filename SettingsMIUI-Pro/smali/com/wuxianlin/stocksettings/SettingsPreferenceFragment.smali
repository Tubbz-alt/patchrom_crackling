.class public abstract Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;
.super Lcom/wuxianlin/stocksettings/InstrumentedPreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/wuxianlin/stocksettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final DELAY_HIGHLIGHT_DURATION_MILLIS:I = 0x258

.field private static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "android:preference_highlighted"

.field private static final TAG:Ljava/lang/String; = "SettingsPreferenceFragment"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mHelpUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/wuxianlin/stocksettings/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method static synthetic access$1(Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;)Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    :cond_0
    iget-object v1, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method protected getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/wuxianlin/stocksettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/wuxianlin/stocksettings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/wuxianlin/stocksettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/wuxianlin/stocksettings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/wuxianlin/stocksettings/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/wuxianlin/stocksettings/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    :cond_0
    invoke-super {p0}, Lcom/wuxianlin/stocksettings/InstrumentedPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;->access$0(Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;->access$1(Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/wuxianlin/stocksettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    iget-object v0, p0, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/wuxianlin/stocksettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v1, v7, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    move-object v0, v7

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
