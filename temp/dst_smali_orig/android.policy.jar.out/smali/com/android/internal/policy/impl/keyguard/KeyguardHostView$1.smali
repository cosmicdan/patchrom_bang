.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z

    :cond_0
    return-void
.end method
