.class public Landroid/content/pm/VerifierDeviceIdentity;
.super Ljava/lang/Object;
.source "VerifierDeviceIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/VerifierDeviceIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODE:[C = null

.field private static final GROUP_SIZE:I = 0x4

.field private static final LONG_SIZE:I = 0xd

.field private static final SEPARATOR:C = '-'


# instance fields
.field private final mIdentity:J

.field private final mIdentityString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    new-instance v0, Landroid/content/pm/VerifierDeviceIdentity$1;

    invoke-direct {v0}, Landroid/content/pm/VerifierDeviceIdentity$1;-><init>()V

    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    invoke-static {p1, p2}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    invoke-static {v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/VerifierDeviceIdentity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static final decodeBase32([B)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v11, 0xd

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    aget-byte v1, p0, v2

    const/16 v7, 0x41

    if-gt v7, v1, :cond_0

    const/16 v7, 0x5a

    if-gt v1, v7, :cond_0

    add-int/lit8 v6, v1, -0x41

    :goto_1
    const/4 v7, 0x5

    shl-long v7, v4, v7

    int-to-long v9, v6

    or-long v4, v7, v9

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x1

    if-ne v3, v7, :cond_7

    and-int/lit8 v7, v6, 0xf

    if-eq v7, v6, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "illegal start character; will overflow"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    const/16 v7, 0x32

    if-gt v7, v1, :cond_1

    const/16 v7, 0x37

    if-gt v1, v7, :cond_1

    add-int/lit8 v6, v1, -0x18

    goto :goto_1

    :cond_1
    const/16 v7, 0x2d

    if-ne v1, v7, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v7, 0x61

    if-gt v7, v1, :cond_4

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_4

    add-int/lit8 v6, v1, -0x61

    goto :goto_1

    :cond_4
    const/16 v7, 0x30

    if-ne v1, v7, :cond_5

    const/16 v6, 0xe

    goto :goto_1

    :cond_5
    const/16 v7, 0x31

    if-ne v1, v7, :cond_6

    const/16 v6, 0x8

    goto :goto_1

    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "base base-32 character: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    if-le v3, v11, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "too long; should have 13 characters"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    if-eq v3, v11, :cond_9

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "too short; should have 13 characters"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    return-wide v4
.end method

.method private static final encodeBase32(J)Ljava/lang/String;
    .locals 7

    sget-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    const/16 v5, 0x10

    new-array v1, v5, [C

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0xd

    if-ge v3, v5, :cond_1

    if-lez v3, :cond_0

    rem-int/lit8 v5, v3, 0x4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x2d

    aput-char v5, v1, v4

    :cond_0
    const-wide/16 v5, 0x1f

    and-long/2addr v5, p0

    long-to-int v2, v5

    const/4 v5, 0x5

    ushr-long/2addr p0, v5

    add-int/lit8 v4, v4, -0x1

    aget-char v5, v0, v2

    aput-char v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static generate()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {v0}, Landroid/content/pm/VerifierDeviceIdentity;->generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v1

    return-object v1
.end method

.method static generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;
    .locals 3

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    new-instance v2, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-direct {v2, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    return-object v2
.end method

.method public static parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    const-string v2, "US-ASCII"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-static {v1}, Landroid/content/pm/VerifierDeviceIdentity;->decodeBase32([B)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad base-32 characters in input"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/content/pm/VerifierDeviceIdentity;

    iget-wide v2, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    iget-wide v4, v0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
