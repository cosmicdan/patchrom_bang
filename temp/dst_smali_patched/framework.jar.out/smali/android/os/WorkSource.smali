.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method private addLocked(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p1, v1, v3

    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    :cond_1
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    aput p1, v1, v2

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 12

    const/4 v11, 0x0

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_f

    if-ge v3, v0, :cond_0

    aget v9, v8, v4

    aget v10, v7, v3

    if-ge v9, v10, :cond_9

    :cond_0
    const/4 v2, 0x1

    if-nez v7, :cond_3

    const/4 v9, 0x4

    new-array v7, v9, [I

    aget v9, v8, v4

    aput v9, v7, v11

    :goto_1
    if-eqz p3, :cond_1

    sget-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v9, :cond_8

    new-instance v9, Landroid/os/WorkSource;

    aget v10, v8, v4

    invoke-direct {v9, v10}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    array-length v9, v7

    if-lt v3, v9, :cond_6

    array-length v9, v7

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v5, v9, [I

    if-lez v3, :cond_4

    invoke-static {v7, v11, v5, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    if-ge v3, v0, :cond_5

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v3, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    move-object v7, v5

    aget v9, v8, v4

    aput v9, v7, v3

    goto :goto_1

    :cond_6
    if-ge v3, v0, :cond_7

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v3, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    aget v9, v8, v4

    aput v9, v7, v3

    goto :goto_1

    :cond_8
    sget-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v10, v8, v4

    invoke-direct {v9, v10}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_2

    :cond_9
    if-nez p2, :cond_b

    :cond_a
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_2

    aget v9, v8, v4

    aget v10, v7, v3

    if-ge v9, v10, :cond_a

    goto :goto_3

    :cond_b
    move v6, v3

    :goto_4
    if-ge v3, v0, :cond_d

    aget v9, v8, v4

    aget v10, v7, v3

    if-le v9, v10, :cond_d

    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-nez v9, :cond_c

    new-instance v9, Landroid/os/WorkSource;

    aget v10, v7, v3

    invoke-direct {v9, v10}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v10, v7, v3

    invoke-direct {v9, v10}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_5

    :cond_d
    if-ge v6, v3, :cond_e

    sub-int v9, v3, v6

    invoke-static {v7, v3, v7, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v9, v3, v6

    sub-int/2addr v0, v9

    move v3, v6

    :cond_e
    if-ge v3, v0, :cond_2

    aget v9, v8, v3

    aget v10, v7, v3

    if-ne v9, v10, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_f
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iput-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    return v2
.end method


# virtual methods
.method public add(I)Z
    .locals 4

    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public add(Landroid/os/WorkSource;)Z
    .locals 3

    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(I)Landroid/os/WorkSource;
    .locals 4

    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3

    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .locals 7

    const/4 v4, 0x1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget v5, p1, Landroid/os/WorkSource;->mNum:I

    if-eq v0, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget v5, v2, v1

    aget v6, v3, v1

    if-ne v5, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/WorkSource;

    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)I
    .locals 1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v2, :cond_0

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    xor-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 9

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v5, p0, Landroid/os/WorkSource;->mUids:[I

    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v6, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    if-ge v3, v0, :cond_2

    aget v7, v6, v4

    aget v8, v5, v3

    if-ne v7, v8, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_0

    add-int/lit8 v7, v3, 0x1

    sub-int v8, v0, v3

    invoke-static {v5, v7, v5, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    aget v7, v6, v4

    aget v8, v5, v3

    if-le v7, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return v2
.end method

.method public set(I)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public set(Landroid/os/WorkSource;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iput v3, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 4

    const/4 v0, 0x0

    sget-object v2, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v1, 0x0

    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/os/WorkSource;

    const/4 v1, 0x0

    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{WorkSource: uids=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v2, :cond_1

    if-eqz v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method