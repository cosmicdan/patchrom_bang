.class Landroid/webkit/ZoomManager$FocusMovementQueue;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusMovementQueue"
.end annotation


# static fields
.field private static final QUEUE_CAPACITY:I = 0x5


# instance fields
.field private mIndex:I

.field private mQueue:[F

.field private mSize:I

.field private mSum:F

.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method constructor <init>(Landroid/webkit/ZoomManager;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mQueue:[F

    iput v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    iput v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/ZoomManager$FocusMovementQueue;)F
    .locals 1

    invoke-direct {p0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->getSum()F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/webkit/ZoomManager$FocusMovementQueue;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/ZoomManager$FocusMovementQueue;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager$FocusMovementQueue;->add(F)V

    return-void
.end method

.method private add(F)V
    .locals 3

    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSize:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSize:I

    :goto_0
    iget-object v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mQueue:[F

    iget v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    aput p1, v0, v1

    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    return-void

    :cond_0
    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    iget-object v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mQueue:[F

    iget v2, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    aget v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    goto :goto_0
.end method

.method private clear()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSize:I

    iput v2, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    iput v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mQueue:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getSum()F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    return v0
.end method
