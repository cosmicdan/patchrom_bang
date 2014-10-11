.class Lcom/android/server/MuteSwitchObserver;
.super Landroid/os/UEventObserver;
.source "MuteSwitchObserver.java"


# static fields
.field private static final MUTE_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/mutestatus/state"

.field private static final MUTE_SWITCH_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/mutestatus"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMuteState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/MuteSwitchObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/MuteSwitchObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/MuteSwitchObserver;->mMuteState:I

    iput-object p1, p0, Lcom/android/server/MuteSwitchObserver;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "DEVPATH=/devices/virtual/switch/mutestatus"

    invoke-virtual {p0, v1}, Lcom/android/server/MuteSwitchObserver;->startObserving(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MuteSwitchObserver;->init()V

    return-void
.end method

.method private final declared-synchronized init()V
    .locals 7

    monitor-enter p0

    const/16 v5, 0x8

    :try_start_0
    new-array v0, v5, [C

    iget v4, p0, Lcom/android/server/MuteSwitchObserver;->mMuteState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/sys/class/switch/mutestatus/state"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :goto_0
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/server/MuteSwitchObserver;->update(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    sget-object v5, Lcom/android/server/MuteSwitchObserver;->TAG:Ljava/lang/String;

    const-string v6, "This kernel does not have mute switch support"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_1
    move-exception v1

    :try_start_4
    sget-object v5, Lcom/android/server/MuteSwitchObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private final declared-synchronized update(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/server/MuteSwitchObserver;->mMuteState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput p1, p0, Lcom/android/server/MuteSwitchObserver;->mMuteState:I

    iget-object v3, p0, Lcom/android/server/MuteSwitchObserver;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez p1, :cond_2

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/server/MuteSwitchObserver;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    sget-object v1, Lcom/android/server/MuteSwitchObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mute Switch UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/MuteSwitchObserver;->update(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/MuteSwitchObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
