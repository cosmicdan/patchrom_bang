.class Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "MultiGlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/MultiGlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/widget/multiwaveview/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/multiwaveview/MultiGlowView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/multiwaveview/MultiGlowView;Lcom/android/internal/widget/multiwaveview/MultiGlowView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/MultiGlowView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->clear()V

    return-void
.end method

.method public isRunning()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v4, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-ne v4, v3, :cond_0

    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :goto_1
    return v3

    .restart local v0       #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public removeAllUpdateListeners()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspend"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->mSuspended:Z

    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView$AnimationBundle;->clear()V

    return-void
.end method
