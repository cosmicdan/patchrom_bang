.class final Lcom/android/internal/telephony/cat/BearerDesc$1;
.super Ljava/lang/Object;
.source "BearerDesc.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BearerDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/cat/BearerDesc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/BearerDesc;
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/cat/BearerDesc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cat/BearerDesc;-><init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerDesc$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/BearerDesc$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/BearerDesc;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cat/BearerDesc;
    .locals 1

    new-array v0, p1, [Lcom/android/internal/telephony/cat/BearerDesc;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/BearerDesc$1;->newArray(I)[Lcom/android/internal/telephony/cat/BearerDesc;

    move-result-object v0

    return-object v0
.end method