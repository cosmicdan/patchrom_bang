.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;
.super Ljava/lang/Object;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->doTransition(Landroid/view/View;F)V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->doTransition(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lxtreamer/app/XMethods;->lockscreenTargetActivity(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v0

    const/4 v3, 0x1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0
.end method
