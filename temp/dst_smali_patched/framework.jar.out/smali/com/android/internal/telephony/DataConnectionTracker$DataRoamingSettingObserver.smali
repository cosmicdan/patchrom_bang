.class Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;
.super Landroid/database/ContentObserver;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRoamingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    #calls: Lcom/android/internal/telephony/DataConnectionTracker;->handleDataOnRoamingChange()V
    invoke-static {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->access$000(Lcom/android/internal/telephony/DataConnectionTracker;)V

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "data_roaming_2"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method