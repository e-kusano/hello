<?php

/**
 * WeeklyReportListPopupController
 * @author takanori_gozu
 *
 */
class WeeklyReportListPopup extends MY_Controller {

	public function index() {

		$this->common();

		$this->view('report/weekly_report_popup.html');
	}

	public function confirm() {

		$this->common();

		$month = $this->get('month_list');
		$this->set('list', $this->model->get_count_list($month));

		$this->view('report/weekly_report_popup.html');
	}

	/**
	 * 共通部分
	 */
	public function common() {

		$this->load->model('report/WeeklyReportModel', 'model');

		$this->set('popup', "1");
		$this->set('month_select', form_dropdown('month_list', $this->model->get_monthly_map()));
	}
}
?>